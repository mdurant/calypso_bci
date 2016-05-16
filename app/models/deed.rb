class Deed < ActiveRecord::Base
    
    validates_presence_of :title, :date_deed, :benefit, :area_id
    validates_length_of :title, :minimum => 3
    
    belongs_to :area, foreign_key: "area_id"
    belongs_to :user, foreign_key: "id_user"
    
end
