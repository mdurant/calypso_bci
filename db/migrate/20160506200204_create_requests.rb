class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :title
      t.integer :area_id
      t.integer :user_id
      t.text :description
      t.date :date_request
      t.string :image

      t.timestamps null: false
    end
  end
end
