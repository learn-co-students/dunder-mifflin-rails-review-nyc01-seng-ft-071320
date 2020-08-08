class UpdateEmployeeTableDogId < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :dog
    add_column :employees, :dog_id, :integer  
  end
end
