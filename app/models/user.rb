class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
  #validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  # Se agrega al modelo que el campo username tiene que ser obligatorio
  #has_attached_file :fotografia, styles: { medium: "300x300>", thumb: "100x100#" , large: "400x400>"}
  #validates_attachment_content_type :fotografia, :content_type => %w(image/jpeg image/jpg image/png) 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, presence: true
  
  #mount_uploader :image, ImageUploader
  mount_uploader :image, ImageUploader
  
  has_many :hitos
  has_many :requests
  
end
