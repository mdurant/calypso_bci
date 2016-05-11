class Area < ActiveRecord::Base
    
    has_many :hitos
    has_many :requests
end
