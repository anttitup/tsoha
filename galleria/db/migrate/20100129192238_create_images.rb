class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :uploader, :null=> false,:options => "CONSTRAINT fk_images_users REFERENCES users(name)"
      t.string :image_name 
      t.string :image_file_name# Original filename
      t.string :image_content_type# Mime type
      t.integer:image_file_size # File size in bytes
      t.timestamps
    end
  
  def self.down
    drop_table :images
  end
end
