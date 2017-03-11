class UserTeam < ActiveRecord::Migration
  def change
    create_table :user_team do |t|
      t.integer :user_id
      t.integer :team_id
      t.timestamps
    end
    add_index :team_id, :user_id
  end
end
