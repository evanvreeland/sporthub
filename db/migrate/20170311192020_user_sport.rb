class UserSport < ActiveRecord::Migration
  def change
    create_table :user_sport do |t|
      t.references :user_id
      t.references :sport_id
      t.timestamps
    end
  end
end
