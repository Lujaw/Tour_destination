class Destination < ActiveRecord::Base
  has_many :reviews
  belongs_to :user
  
  
   class User < ActiveRecord::Base
      devise :database_authenticatable, :confirmable, :recoverable, :rememberable, :trackable, :validatable
  end
end
