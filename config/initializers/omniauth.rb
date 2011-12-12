Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['eGHmrjmD6b57Wy13ui6I6A'], ENV['KWnC5EX0DAbCPjpBMTNT1YQxWWBM6P6sz9a1BkoVM']
  provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET']
  provider :facebook, ENV['FACEBOOK_ID'], ENV['FACEBOOK_SECRET']
	provider :identity
end



