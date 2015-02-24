class CreateEmployee < ActiveRecord::Migration
  def change
    create_table :employees do |t|
    	t.string :fname
    	t.string :lname
    	t.string :email
    	t.string :password
    	t.string :product_department
    end
  end
end
