class RemoveUploaderToImages < ActiveRecord::Migration
  def self.up
    remove_column :images, :uploader
  end

  def self.down
    add_column :images, :uploader, :string
  end
end
