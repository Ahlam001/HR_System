class AddDevisionIdToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :devision_id, :integer
    add_index :employees, :devision_id
  end
end
