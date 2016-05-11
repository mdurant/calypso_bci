class AddFotografiaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fotografia, :string
  end
end
