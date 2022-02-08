class AddTeamIdToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :team_id, :integer
    add_index :employees, :team_id
  end
end
