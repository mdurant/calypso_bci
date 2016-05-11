class Request < ActiveRecord::Base
    
    validates :title, presence: true
    validates :area_id, presence: true
    validates :usuario, presence: true
    validates :description, presence: true
    validates :date_request, presence: true
    
    belongs_to :area, foreign_key: "area_id"
    
    mount_uploader :image, ImageUploader
   
end
