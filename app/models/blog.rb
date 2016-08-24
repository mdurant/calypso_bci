class Blog < ActiveRecord::Base
    
  validates_presence_of :title, :fecha, :noticia, :category_id
  #validates_processing_of :foto,
  validate :image_size_validation
 
  mount_uploader :foto, FotoUploader
  
  belongs_to :category, foreign_key: "category_id"
  belongs_to :user, foreign_key: "user_id"
  
  
  private
  def image_size_validation
    errors[:foto] << "should be less than 500KB" if foto.size > 0.5.megabytes
  end
  
  
  
end
