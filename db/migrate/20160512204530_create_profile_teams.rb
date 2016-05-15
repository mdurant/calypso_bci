class CreateProfileTeams < ActiveRecord::Migration
  def change
    create_table :profile_teams do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :celular
      t.string :anexo
      t.string :address_work
      t.string :image

      t.timestamps null: false
    end
  end
end
