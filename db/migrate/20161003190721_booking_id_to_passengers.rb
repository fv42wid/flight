class BookingIdToPassengers < ActiveRecord::Migration[5.0]
  def change
    remove_column :passengers, :trip_id
    add_column :passengers, :booking_id, :integer
  end
end
