class AlterColumuserIdToRequest < ActiveRecord::Migration
  def change
    remove_column :requests, :user_id, :integer
    add_column :requests, :usuario, :string 
  end
end
