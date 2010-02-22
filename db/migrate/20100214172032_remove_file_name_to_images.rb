class RemoveFileNameToImages < ActiveRecord::Migration
  def self.up
    remove_column :images, :file_name
  end

  def self.down
    add_column :images, :file_name, :string
  end
end
