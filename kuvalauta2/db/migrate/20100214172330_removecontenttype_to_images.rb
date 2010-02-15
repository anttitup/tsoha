class RemovecontenttypeToImages < ActiveRecord::Migration
  def self.up
    remove_column :images, :content_type, :string
    remove_column :images, :file_size, :integer
    remove_column :images, :uploaded, :datetime
    remove_column :images, :created_at, :datetime
    remove_column :images, :updated_at, :datetime
    

    

  end

  def self.down
  end
end
