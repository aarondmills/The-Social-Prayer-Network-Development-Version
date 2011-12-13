Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTERID'], ENV['TWITTERKEY']
  provider :facebook, ENV['FACEBOOKID'], ENV['FACEBOOKKEY']
	provider :identity, on_failed_registration: lambda { |env|    
    IdentitiesController.action(:new).call(env)
  }
end


