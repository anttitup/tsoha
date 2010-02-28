class User < ActiveRecord::Base
  has_many :image
  has_many :commnent
  validates_uniqueness_of :name
  #validates_presence_of :name, :password,:email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => 'email must be valid'

  def password
    @password
  end

  def self.authenticate(name, password)
    find(:first, :conditions => {:name=>name, :pasword =>password})  
  end

 end
