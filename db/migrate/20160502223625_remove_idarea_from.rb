class RemoveIdareaFrom < ActiveRecord::Migration
  def change
    remove_column :hito, :id_area, :integer
    add_column :hito, :area_id, :integer
  end
end
