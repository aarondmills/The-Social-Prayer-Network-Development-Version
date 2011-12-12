class PagesController < ApplicationController
  def home
		@title = "Welcome"
  end

  def contact
		@title = "Contact Page"
  end

  def terms
		@title = "Terms of Use"
  end

  def privacy
		@title = "Privacy Policy"
  end

  def credits
		@title = "Credits"
  end

	def about
		@title = "About"
	end

end
