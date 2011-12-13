class User < ActiveRecord::Base	
	def self.from_omniauth(auth)
    find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end

	after_create :add_user_to_mailchimp



	def add_user_to_mailchimp  
		mailchimp = Hominid::API.new(MAILCHIMP_API_KEY)
		list_id = mailchimp.find_list_id_by_name MAILCHIMP_LIST_NAME
		mailchimp.list_subscribe(list_id, self.email, {'MMERGE3' => self.name}, 'html', false, true, false, false))
	end

end
