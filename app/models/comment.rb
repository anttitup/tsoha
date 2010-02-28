class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :image
  validates_presence_of :comment,:user_id,:image_id
end
