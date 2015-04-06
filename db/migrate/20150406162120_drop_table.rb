class DropTable < ActiveRecord::Migration
  def change
  	drop_table :bodies
  	drop_table :employees
  	drop_table :foots
  	drop_table :hands
  	drop_table :admins
  	remove_column :participants, :body_id
  	remove_column :participants, :hand_id
  	remove_column :participants, :foot_id
  end
end
