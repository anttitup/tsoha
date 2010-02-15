class AddUserNameToImages < ActiveRecord::Migration
  def self.up
    add_column :images, :user_name, :string
  end

  def self.down
    remove_column :images, :user_name
  end
end
