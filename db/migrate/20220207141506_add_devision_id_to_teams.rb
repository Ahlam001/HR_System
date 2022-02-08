class AddDevisionIdToTeams < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :devision_id, :integer
    add_index :teams, :devision_id

  end
end
