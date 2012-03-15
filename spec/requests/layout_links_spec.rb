require 'spec_helper'

#describe PagesController do
#  #render_views
#
#  before(:each) do
#    #
#    # Define @base_title here.
#    #
#  end
#
#  describe "GET 'home'" do
#    it "should be successful", :chapter3 => "true" do
#      get 'home'
#      response.should be_success
#    end
#
#    it "should have the right title", :chapter3 => "true" do
#      get 'home'
#      response.should have_selector("title",
#                                    :content => @base_title + " | Home")
#    end
#  end
#
#  describe "GET 'contact'" do
#    it "should be successful", :chapter3 => "true" do
#      get 'contact'
#      response.should be_success
#    end
#
#    it "should have the right title", :chapter3 => "true" do
#      get 'contact'
#      response.should have_selector("title",
#                                    :content => @base_title + " | Contact")
#    end
 # end
 #
 # describe "GET 'about'" do
 #   it "should be successful", :chapter3 => "true" do
 #     get 'about'
 #     response.should be_success
 #   end
 #
 #   it "should have the right title", :chapter3 => "true" do
 #     get 'about'
 #     response.should have_selector("title",
 #                                   :content => @base_title + " | About")
 #   end
 # end

describe "LayoutLinks" do

  it "should have a Home page at '/'", :chapter5 => "true" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at '/contact'", :chapter5 => "true" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an About page at '/about'", :chapter5 => "true" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end

  it "should have a Help page at '/help'", :chapter5 => "true" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end

    it "should have a signup page at '/signup'", :chapter5 => "true" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end
end
#  end