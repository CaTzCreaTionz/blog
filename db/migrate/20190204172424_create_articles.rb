class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.string :author
      t.date :date
      t.string :readtime
      t.string :image_url
      t.timestamps
    end
  end
end
