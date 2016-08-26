class Request < ActiveRecord::Base
    
    mount_uploader :image, ImageUploader
    
    validates :title, presence: true
    validates :area_id, presence: true
    validates :usuario, presence: true
    validates :description, presence: true
    validates :date_request, presence: true
    
    validates_presence_of   :image
    validates_integrity_of  :image
    validates_processing_of :image 
    
    belongs_to :area, foreign_key: "area_id"
    
    private
    def image_size_validation
      errors[:image] << "debe ser inferior a 1000 KB" if image.size > 1.0.megabytes
    end
   
end
