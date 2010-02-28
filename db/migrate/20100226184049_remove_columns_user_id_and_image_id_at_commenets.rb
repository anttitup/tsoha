class RemoveColumnsUserIdAndImageIdAtCommenets < ActiveRecord::Migration
  def self.up
    remove_column :comments, :image_id
    remove_column :comments, :user_id
  end

  def self.down
    add_column :comments, :image_id, :integer
    add_column :comments, :user_id, :integer
  end
end
