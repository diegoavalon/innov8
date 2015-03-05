class DeviseCreateAdmins < ActiveRecord::Migration
  def self.up
    create_table(:admins) do |t|
      
      t.boolean :developer_mode, :default => false
      t.boolean :reports_only, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :admins
  end
end