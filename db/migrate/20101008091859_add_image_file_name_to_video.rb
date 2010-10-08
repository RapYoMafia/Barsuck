class AddImageFileNameToVideo < ActiveRecord::Migration
  def self.up
    add_column :videos, :image_file_name, :string
  end

  def self.down
    remove_column :videos, :image_file_name
  end
end
