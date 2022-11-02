puts 'Creating seeds...'

puts 'Creating administrator...'
User.create(name: 'Administrator', email: 'admin@admin.com', password: '123qwe321ewq', admin: true);

puts 'Creating cars...'
# https://www.tesla.com/models
Car.create(
  model: 'S Plaid',
  color: 'red',
  image:'https://i.imgur.com/nQs2mt6.png',
  description: 'Model S Plaid has the quickest acceleration of any vehicle in production.',
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
  description: 'Model 3 has a carbon fiber spoiler that improves stability at high speeds.',
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
  description: 'Model Y provides maximum versatility — able to carry 7 passengers and their cargo.',
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
  description: 'Model X Plaid is the highest performing SUV ever built, with a quick accelelaration.',
  range: 333,
  motor_type: 'AWD Tri-Motor',
  acceleration_time: 2.5,
  booking_price: 320.00,
  booking_duration: 24
);

puts 'Seeding done.'
