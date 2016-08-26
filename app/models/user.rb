class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  mount_uploader :image, ImageUploader
  #mount_uploader :image, ImageUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

  # User Avatar Validation
  validates_presence_of   :image
  validates_integrity_of  :image
  validates_processing_of :image  
  
  has_many :deeds
  has_many :requests
  has_many :blogs
  

  private
    def avatar_size_validation
      errors[:image] << "debe ser inferior a 1000 KB" if image.size > 1.0.megabytes
    end
  
end
