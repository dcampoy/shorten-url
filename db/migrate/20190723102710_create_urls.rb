class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.string :code
      t.string :url

      t.timestamps
    end

    add_index :urls, :code, unique: true
  end
end
