class Destination < ActiveRecord::Base
  has_many :reviews
  validates :description, :presence =>true
  validates :title, :presence =>true, :uniqueness => true,
            :format => {:with =>/\w|\s/i},
            :length => {:minimum =>5 }
            
  attr_accessible :title, :description
  belongs_to :user  
  

end
