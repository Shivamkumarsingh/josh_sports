class CreateJoinTableTeamUser < ActiveRecord::Migration[5.2]
  def change
    create_join_table :teams, :users do |t|
      t.index [:team_id, :user_id]
      # t.index [:user_id, :team_id]
    end
  end
end
