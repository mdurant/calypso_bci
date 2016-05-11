class CreateHitos < ActiveRecord::Migration
  def change
    create_table :hitos do |t|
      t.string :title
      t.integer :id_area
      t.date :date_from
      t.date :date_end
      t.text :benefit
      t.integer :id_user

      t.timestamps null: false
    end
  end
end
