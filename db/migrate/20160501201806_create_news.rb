class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.integer :id_user
      t.integer :id_category

      t.timestamps null: false
    end
  end
end
