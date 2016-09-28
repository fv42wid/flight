class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.integer :start_airport_id
      t.integer :finish_airport_id
      t.datetime :start_time
      t.integer :duration

      t.timestamps
    end
  end
end
