Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['eGHmrjmD6b57Wy13ui6I6A'], ENV['KWnC5EX0DAbCPjpBMTNT1YQxWWBM6P6sz9a1BkoVM']
  provider :facebook, ENV['	338995739449267'], ENV['	0a0ba28884b56c07ad4c9874ea938ee7']
	provider :identity, on_failed_registration: lambda { |env|    
    IdentitiesController.action(:new).call(env)
  }
end



