
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://velvety-marigold-7d3a2f.netlify.app/'
    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head],
             credentials: true
  end

  allow do
    origins 'https://tesla-booking.herokuapp.com/'
    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head],
             credentials: true
  end
end
