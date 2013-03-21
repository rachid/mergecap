Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, APP_SETTINGS['github']['key'], APP_SETTINGS['github']['secret']
end
