class AddId < ActiveRecord::Migration
  def self.up
  add_column :users, :id, :primary_key 
  add_column :images, :id, :primary_key 
  add_column :comments, :id, :primary_key 
  remove_column :comments, :image_name,:user_name
  remove_column :images, :user_name
  add_column :comments, :image_id, :integer 
  add_column :comments, :user_id, :integer
  add_column :images, :user_id, :integer 
  end

  def self.down
  end
end
