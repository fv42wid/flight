class UpdateBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :trip_id, :integer
  end
end
