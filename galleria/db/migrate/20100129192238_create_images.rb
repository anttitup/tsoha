class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :uploader
      t.string :image_name
      t.timestamps
    end
  end
  def self.up
    add_column :images, :image_file_name, :string # Original filename
    add_column :images, :image_content_type, :string # Mime type
    add_column :images, :image_file_size, :integer # File size in bytes
  end
  
  def self.down
    drop_table :images
    remove_column :images, :image_file_name, :string
    remove_column :images, :image_content_type,:string
    remove_column :images, :image_file_size, :integer 
  end
end
