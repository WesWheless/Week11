class CreateFlighttests < ActiveRecord::Migration
  def change
    create_table :flighttests do |t|
      t.integer :flight_id
      t.string :airline
      t.string :flight_num
      t.string :departure
      t.string :arrival
      t.string :flight_time
    end
  end
end
