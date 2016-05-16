class Area < ActiveRecord::Base
    
    has_many :deeds
    has_many :requests
end
