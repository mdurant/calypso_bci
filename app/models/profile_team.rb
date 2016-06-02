class ProfileTeam < ActiveRecord::Base
    
    validates :name, presence: true
    validates :email, presence: true
    validates :anexo, presence: true
    
    
    mount_uploader :image, ImageUploader
end
