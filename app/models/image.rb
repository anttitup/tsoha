class Image < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  named_scope :uploader, lambda { |uploader| 
    {:conditions => {:user_id => uploader}}
  } 
  named_scope :image_name, lambda { |image_name|
  {:conditions => {:name => image_name}}}
  
  has_attached_file :picture,
 :styles =>{:thumb=> "100x100#",:small  => "150x150>" }
  
  validates_attachment_presence :picture
  
  validates_attachment_size :picture,
  :less_than => 2.megabytes
  
  validates_attachment_content_type :picture, 
  :content_type =>['image/jpeg', 'image/png','image/gif']
  
  def self.search search
    user=User.find_by_name(search)
    ret = []
    if user 
     ret = uploader(user.id)
    end
    ret.concat(image_name(search))
  end
end
