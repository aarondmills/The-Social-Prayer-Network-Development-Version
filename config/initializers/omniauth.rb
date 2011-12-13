Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, TWITTERID,TWITTERKEY
  provider :facebook, FACEBOOKID,FACEBOOKKEY
	provider :identity, :fields => [:email, :name], on_failed_registration: lambda { |env|    
    IdentitiesController.action(:new).call(env)
  }
end


