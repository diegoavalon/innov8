class AddColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :fname, :string
  	add_column :users, :lname, :string
  	add_column :users, :apparel, :boolean
  	add_column :users, :footwear, :boolean
  	add_column :users, :gloves, :boolean
  end
end
