class ChangeDateToDeeds < ActiveRecord::Migration
  def self.up
    remove_column :deeds, :date_deed, :string
  end
  
  def self.down
    add_column :deeds, :date_deed, :date
  end
end
