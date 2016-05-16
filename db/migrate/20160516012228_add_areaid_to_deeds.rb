class AddAreaidToDeeds < ActiveRecord::Migration
  def change
    add_column :deeds, :area_id, :integer 
  end
end
