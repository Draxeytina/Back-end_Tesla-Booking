# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating seeds...'

puts 'Creating administrator...'
User.create(name: 'Administrator', email: 'admin@admin.com', password: '123qwe321ewq', admin: true);

puts 'Creating cars...'
# https://www.tesla.com/models
Car.create(
  model: 'S Plaid',
  color: 'red',
  image:'https://i.imgur.com/nQs2mt6.png',
  description: 'Model S Plaid has the quickest acceleration of any vehicle in production. Updated battery architecture for all Model S trims enables back-to-back track runs without performance degradation.',
  range: 396,
  motor_type: 'AWD Tri-Motor',
  acceleration_time: 1.99,
  booking_price: 400.00,
  booking_duration: 12
);

# https://www.tesla.com/model3
Car.create(
  model: '3',
  color: 'white',
  image:'https://i.imgur.com/H5ziIET.png',
  description: 'Model 3 comes with the option of dual motor all-wheel drive, 20” Überturbine Wheels and Performance Brakes for total control in all weather conditions. A carbon fiber spoiler improves stability at high speeds, all allowing Model 3 to accelerate from 0-60 mph* in as little as 3.1 seconds.',
  range: 358,
  motor_type: 'AWD Dual-Motor',
  acceleration_time: 3.1,
  booking_price: 275.00,
  booking_duration: 24
);

# https://www.tesla.com/modely
Car.create(
  model: 'Y',
  color: 'black',
  image:'https://i.imgur.com/eEyxT1s.png',
  description: 'Model Y provides maximum versatility — able to carry 7 passengers and their cargo. Each second row seat folds flat independently, creating flexible storage for skis, furniture, luggage and more. The liftgate opens to a low trunk floor that makes loading and unloading easy and quick.',
  range: 330,
  motor_type: 'AWD Tri-Motor',
  acceleration_time: 3.5,
  booking_price: 225.00,
  booking_duration: 48
);

# https://www.tesla.com/modelx
Car.create(
  model: 'X Plaid',
  color: 'blue',
  image:'https://i.imgur.com/Vh6KaLF.png',
  description: 'With the most power and quickest acceleration of any SUV, Model X Plaid is the highest performing SUV ever built. Updated battery architecture enables both Long Range and Plaid configurations to complete back-to-back track runs without performance degradation.',
  range: 333,
  motor_type: 'AWD Tri-Motor',
  acceleration_time: 2.5,
  booking_price: 320.00,
  booking_duration: 24
);

puts 'Seeding done.'
