class User < ActiveRecord::Base	
	def self.from_omniauth(auth)
    find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
			user.email = auth["info"]["email"]
			user.age = auth["info"]["age"]
    end
  end
	
	before_create { generate_token(:auth_token) }

	after_create :add_user_to_mailchimp



	def add_user_to_mailchimp  
		mailchimp = Hominid::API.new("323e2375482cbe3490669fc180f270ca-us1")
		list_id = mailchimp.find_list_id_by_name "Social Prayer Network"
		mailchimp.list_subscribe(list_id, self.email, {'MMERGE3' => self.name}, 'html', false, true, false, false)
	end

	def generate_token(column)
		begin 
			self[column] = SecureRandom.urlsafe_base64
		end while User.exists?(column => self[column])
	end

end
