class CreateActivityRecords < ActiveRecord::Migration
  def change
    create_table :activity_records do |t|
      t.datetime :date
      t.references :sport_id, index: true
      t.references :user_id, index: true
      t.integer :duration

      t.timestamps
    end
  end
end
