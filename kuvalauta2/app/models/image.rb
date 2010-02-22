class Image < ActiveRecord::Base
  belongs_to :user
  has_many :comments
 
  
  has_attached_file :picture, :styles =>{:thumb=> "100x100#",:small  => "150x150>" }
  validates_attachment_presence :picture
  validates_attachment_size :picture, :less_than => 2.megabytes
  validates_attachment_content_type :picture, :content_type =>['image/jpeg', 'image/png']
  
  def self.find_all_images
    find(:all, :order=>"name")
  end

    
  
end
