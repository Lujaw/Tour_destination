class Review < ActiveRecord::Base
  belongs_to :destinations
  belongs_to :user
  validates :content, 
            :length => { :minimum => 20 },
            :uniqueness => true,
            :format => {:with =>/^(\w|\s)+$/i}           
end
