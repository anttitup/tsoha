class AddImageToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :comment_of_this_image, :text,:options => "CONSTRAINT fk_comments_users REFERENCES images(image_name)"

  end

  def self.down
    remove_column :comments, :comment_of_this_image
  end
end
