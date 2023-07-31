Unsplash.configure do |config|
  config.application_access_key = ENV['UNSPLASH_KEY']
  config.application_secret = ENV['UNSPLASH_SECRET']
  config.application_redirect_uri = ENV['UNSPLASH_URI']
  config.utm_source = "scotts_terrific_client_app"
end

# @dev Rotated old keys for test
