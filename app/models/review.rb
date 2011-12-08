class Review < ActiveRecord::Base
  belongs_to :destinations
  validates :content, :length => { :minimum => 20 }
end
