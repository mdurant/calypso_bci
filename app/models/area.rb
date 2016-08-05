class Area < ActiveRecord::Base
    
    has_many :deeds
    has_many :requests
    has_many :blogs
end
