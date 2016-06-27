class AddNames < ActiveRecord::Migration
  def change

  	add_column :subscribers, :first_name, :string
  	add_column :subscribers, :last_name, :string
  	
  end
end
