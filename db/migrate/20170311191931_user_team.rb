class UserTeam < ActiveRecord::Migration
  def change
    create_table :user_team do |t|
      t.references :user_id
      t.references :team_id
      t.timestamps
    end
  end
end
