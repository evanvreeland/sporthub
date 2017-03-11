class UserSport < ActiveRecord::Migration
  def change
    create_table :user_sport do |t|
      t.integer :user_id
      t.integer :sport_id
      t.timestamps
    end
    add_index :sport_id, :user_id
  end
end
