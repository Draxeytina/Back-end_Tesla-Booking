class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :model, null: false
      t.string :color
      t.string :image
      t.string :description, null: false
      t.integer :range
      t.string :motor_type
      t.decimal :acceleration_time
      t.decimal :booking_price, precision: 22, scale: 2
      t.integer :booking_duration, null: false

      t.timestamps
    end
  end
end

#  rails db:rollback
#  rails db:migrate
#  or

#  rails db:migrate:redo