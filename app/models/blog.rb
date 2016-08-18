class Blog < ActiveRecord::Base
    
  validates_presence_of :title, :fecha, :noticia, :category_id,
  
  content_type: {content_type: ['image/jpeg','image/jpg', 'image/png', 'image/gif']},
  size: {less_than: 2.megabytes}
  
  belongs_to :category, foreign_key: "category_id"
  belongs_to :user, foreign_key: "user_id"
  
  mount_uploader :foto, ImageUploader
end
