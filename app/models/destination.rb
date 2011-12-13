class Destination < ActiveRecord::Base
  has_many :reviews
  validates :title, :presence =>true, :uniqueness => true,
            :format => {:with => /\w|\s/i},
            # :format => {:with => ^[A-Za-z0-9][']+[A-Za-z0-9][']*/i$},
            :length => {:minimum =>5 }
  validates :description, :presence =>true,
            :format => {:with => /\w|\s/i}
  attr_accessible :title, :description, :photo
  belongs_to :user  
  attr_accessor :destination_x, :destination_y, :destination_w, :destination_h 
  mount_uploader :photo, PhotoUploader
end
