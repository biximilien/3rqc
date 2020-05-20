class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.datetime :start_time
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
