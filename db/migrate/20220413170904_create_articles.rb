class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :topic
      t.integer :mins_read

      t.timestamps
    end
  end
end
