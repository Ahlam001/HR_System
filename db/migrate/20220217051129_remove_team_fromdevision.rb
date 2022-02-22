class RemoveTeamFromdevision < ActiveRecord::Migration[7.0]
  def change
    remove_column :devisions, :teams, :string
  end
end
