RailsLimiter::Init.configure do |config|
  config.connexion   = MockRedis.new
end