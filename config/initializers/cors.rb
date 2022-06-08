Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*',
      headers: :any,
      methods: [:get, :post, :patch, :options, :put],
      expose: %w[expiry uid access-token token-type client]
  end
end