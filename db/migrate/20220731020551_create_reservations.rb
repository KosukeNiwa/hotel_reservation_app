class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :start_day
      t.date :end_day
      t.integer :people

      t.timestamps
    end
  end
end
