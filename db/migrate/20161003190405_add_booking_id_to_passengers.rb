class AddBookingIdToPassengers < ActiveRecord::Migration[5.0]
  def change

    add_column :passengers, :trip_id, :integer
  end
end
