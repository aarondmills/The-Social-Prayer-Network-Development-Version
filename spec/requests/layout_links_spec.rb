require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Welcome")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end

	it "should have an Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact Page")
  end

  

end
