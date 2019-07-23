class RedirectController < ApplicationController
  def show
    url = Url.find_by(code: url_params)
    if url
      Hit.new(url: url).save()
      redirect_to url.url
    else
      render html: '404 URL not found', status: 404
    end
  end

  private
    def url_params
      params.require(:code)
    end
end
