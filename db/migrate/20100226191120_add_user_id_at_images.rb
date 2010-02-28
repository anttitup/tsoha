class AddUserIdAtImages < ActiveRecord::Migration
  def self.up
    add_column :images, :user_id, :integer, :options => "CONSTRAINT fk_images_users REFERENCES users(id)" 
  end

  def self.down
    remove_column :images, :user_id
  end
end
