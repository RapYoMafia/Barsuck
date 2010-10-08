class AddImageFileNameToGalleryItem < ActiveRecord::Migration
  def self.up
    add_column :gallery_items, :image_file_name, :string
  end

  def self.down
    remove_column :gallery_items, :image_file_name
  end
end
