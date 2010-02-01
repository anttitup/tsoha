class User < ActiveRecord::Base
  has_many:comment
  has_many:image
  validates_presence_of :name,:email,:pasworld
end
