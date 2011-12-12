class Review < ActiveRecord::Base
  belongs_to :destinations
  belongs_to :user
  validates :content, 
            :length => { :minimum => 10 },
            :uniqueness => true,
            :format => {:with =>/^(\w|\s)+$/i}          
             # after_save :notify_destination_owner
  private 
  def notify_destination_owner 
    Notify.notify_owner(self).deliver
  end 
end
