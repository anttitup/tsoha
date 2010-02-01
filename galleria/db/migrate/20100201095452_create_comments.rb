class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :author, :null=>false,:options => "CONSTRAINT fk_comments_users REFERENCES users(name)"
      t.string :headline
      t.text :comment, :null=>false
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
