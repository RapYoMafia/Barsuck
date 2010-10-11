class CreateCheckUpdates < ActiveRecord::Migration
  def self.up
    create_table :check_updates do |t|
      t.string :current_version
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :check_updates
  end
end
