class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :urlToImage
      t.string :content
      t.string :url

      t.timestamps
    end
  end
end
