require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

	describe "Get 'about'" do
		it "should get the about page" do
			get 'about'
			response.should be_successful
		end
	end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'terms'" do
    it "should be successful" do
      get 'terms'
      response.should be_success
    end
  end

  describe "GET 'privacy'" do
    it "should be successful" do
      get 'privacy'
      response.should be_success
    end
  end

  describe "GET 'credits'" do
    it "should be successful" do
      get 'credits'
      response.should be_success
    end
  end

end
