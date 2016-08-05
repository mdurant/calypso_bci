class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.date :fecha
      t.text :noticia
      t.string :foto
      t.integer :category_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
