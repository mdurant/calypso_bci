class Hito < ActiveRecord::Base
    validates_presence_of :area_id, :title, :date_from, :date_end, :benefit
    validates_length_of :title, :minimum => 3
    
    belongs_to :area, foreign_key: "area_id"
    belongs_to :user, foreign_key: "id_user"
    
    
    mount_uploader :image, ImageUploader
    

 def self.delete_old
  	@old_hitos = Hito.where('date_from < ?', 30.days.ago)
  	@old_hitos.delete_all
  end


WillPaginate.per_page = 5

end
