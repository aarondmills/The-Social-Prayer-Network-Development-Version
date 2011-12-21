class Identity < OmniAuth::Identity::Models::ActiveRecord
  validates_presence_of :name
	validates_presence_of :age

	validates :age, :numericality => { :greater_than_or_equal_t0 => 13, :message => "You must be older than 13 to use this site" }

  validates_uniqueness_of :email
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
end


