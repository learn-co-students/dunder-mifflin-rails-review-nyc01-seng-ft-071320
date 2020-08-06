class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :employees, :dog_id, :dog
  end
end
