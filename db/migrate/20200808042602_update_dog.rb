class UpdateDog < ActiveRecord::Migration[5.1]
  def change
    change_column :employees, :dog, :integer
  end
end
