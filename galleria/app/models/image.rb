class Image < ActiveRecord::Base
  #Paperclip  
  has_attached_file :image,
    :styles => {
     :thumb=> "100x100#",
     :small  => "150x150>" }
  belongs_to:user
  has_many:comment
  validates_presence_of :image_name
end
