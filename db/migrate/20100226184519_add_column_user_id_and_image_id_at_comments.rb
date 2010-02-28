class AddColumnUserIdAndImageIdAtComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :user_id, :integer, :options=>"CONSTRAINT fk_comments_users REFERENCES users(id)"
    add_column :comments ,:image_id, :integer, :opstions => "CONSTRAINT fk_comments_images REFERENCES images(id)"
  end

  def self.down
    remove_column :comments, :user_id, :integer
    remove_column :comments, :image_id, :integer
  end
end
