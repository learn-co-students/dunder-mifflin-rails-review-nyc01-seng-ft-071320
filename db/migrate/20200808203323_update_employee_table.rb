class UpdateEmployeeTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :dog_id
    add_column :employees, :dog, :integer
  end
end
