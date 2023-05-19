class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :service, null: false, foreign_key: true, type: :uuid
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
