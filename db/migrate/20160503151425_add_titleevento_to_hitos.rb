class AddTitleeventoToHitos < ActiveRecord::Migration
  def change
    add_column :hitos, :title_evento, :string
    add_column :hitos, :description_evento, :string
  end
end
