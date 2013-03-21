APP_SETTINGS = HashWithIndifferentAccess.new(YAML.load_file("#{Rails.root}/config/settings.yml")[Rails.env])
