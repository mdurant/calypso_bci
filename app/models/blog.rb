class Blog < ActiveRecord::Base
    
  validates_presence_of :title, :fecha, :noticia, :category_id
  
  belongs_to :category, foreign_key: "category_id"
  belongs_to :user, foreign_key: "user_id"
  
  mount_uploader :foto, ImageUploader
end
