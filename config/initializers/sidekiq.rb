# config/initializers/sidekiq.rb

Sidekiq.configure_server do |config|
  # We use the default port 6379 and database 0
  config.redis = { url: ENV.fetch('REDIS_URL', 'redis://localhost:6379/0') }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch('REDIS_URL', 'redis://localhost:6379/0') }
end