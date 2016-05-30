class User < ActiveRecord::Base
  # Include default devise modules. Others available are:

  mount_uploader :image, ImageUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

  # Setup accessible (or protected) attributes for your model
 # attr_accessible :email, :password, :remember_me, :image, :image_cache, :remove_image

  #attr_accessor :login

  validates_presence_of   :image
  validates_integrity_of  :image
  validates_processing_of :image  
  
  has_many :deeds
  has_many :requests
  
end
