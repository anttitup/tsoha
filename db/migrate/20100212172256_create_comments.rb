class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :image_name
      t.string :user_name
      t.text :comment
      t.datetime :posted

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
