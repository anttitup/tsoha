class User < ActiveRecord::Base
  has_many :image
  has_many :commnent
  
  def password
    @password
  end

  def self.authenticate (name,password)
    user = self.find_by_name(name)
    if user
      if user.password != password
        user = nil
      end
    end
    user
  end

end
