
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://deploy-preview-39--deft-cat-7c3d23.netlify.app'
    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head],
             credentials: true
  end

  allow do
    origins 'https://secret-ridge-50120.herokuapp.com/'
    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head],
             credentials: true
  end
end
