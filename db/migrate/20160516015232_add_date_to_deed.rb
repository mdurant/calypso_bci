class AddDateToDeed < ActiveRecord::Migration
  def change
    add_column :deeds, :date_deed, :date
  end
end
