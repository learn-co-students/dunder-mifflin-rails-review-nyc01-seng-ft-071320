class ChangeDogToDogId < ActiveRecord::Migration[5.1]
  def change
    rename_column :employees, :dog, :dog_id
  end
end
