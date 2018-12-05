class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :image
      t.string :text
    
      t.timestamps
    end
  end
end
