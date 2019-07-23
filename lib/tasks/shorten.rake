namespace :shorten do
  desc "Create a new shorten url"
  task :create, [:url] => :environment do |t, args|
    url = Url.new(url: args.url)
    if url.save
      puts "Code: #{url.code}"
    else
      puts 'Invalid url'
    end
  end

  desc "Get information about a shorten url"
  task :info, [:code] => :environment do |t, args|
    url = Url.find_by(code: args.code)
    if url
      puts "Id: #{url.id}"
      puts "Original URL: #{url.url}"
      puts "Hits: #{url.hits.count}"
    else
      puts 'Shorten url cannot be found'
    end
  end
end