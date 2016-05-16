class CreateDeeds < ActiveRecord::Migration
  def change
    create_table :deeds do |t|
      t.string :title
      t.string :date_deed
      t.text :benefit
      t.integer :id_user

      t.timestamps null: false
    end
  end
end
