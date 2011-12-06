class Destination < ActiveRecord::Base
  has_many :reviews
  
  
   class User < ActiveRecord::Base
      devise :database_authenticatable, :confirmable, :recoverable, :rememberable, :trackable, :validatable
  end
end
