class CreateScheduleTimeSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :schedule_time_slots do |t|
      t.references :users, null: false, foreign_key: true
      t.tsrange :time_slot

      t.timestamps
    end
  end
end
