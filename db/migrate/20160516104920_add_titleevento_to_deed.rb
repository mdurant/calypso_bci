class AddTitleeventoToDeed < ActiveRecord::Migration
  def change
    add_column :deeds, :title_evento, :string
    add_column :deeds, :description_evento, :string
  end
end
