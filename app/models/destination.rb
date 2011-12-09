class Destination < ActiveRecord::Base
  has_many :reviews
  validates :title, :presence =>true, :uniqueness => true,
            :format => {:with => /\w|\s/i},
            # :format => {:with => ^[A-Za-z0-9][']+[A-Za-z0-9][']*/i$},
            :length => {:minimum =>5 }
  validates :description, :presence =>true,
            :format => {:with => /\w|\s/i}
  attr_accessible :title, :description
  belongs_to :user  
end
