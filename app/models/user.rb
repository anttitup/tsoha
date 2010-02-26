class User < ActiveRecord::Base
  has_many :image
  has_many :commnent
  validates_uniqueness_of :name
  validates_presence_of :user_id 
  def password
    @password
  end

  def self.authenticate(name, password)
    find(:first, :conditions => {:name=>name, :pasword =>password})  
  end
  def name
    @name
  end
end
