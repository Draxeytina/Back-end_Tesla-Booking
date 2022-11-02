class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :color
      t.string :image
      t.string :description
      t.integer :range
      t.string :motor_type
      t.decimal :acceleration_time
      t.decimal :booking_price, precision: 22, scale: 2
      t.integer :booking_duration

      t.timestamps
    end
  end
end
