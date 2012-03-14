require 'spec_helper'

describe UsersController do
  render_views

  describe "GET 'new'" do
    it "should be successful", :chapter6 => "true" do
      get 'new'
      response.should be_success
    end

    it "should have the right title", :chapter6 => "true" do
      get 'new'
      response.should have_selector("title", :content => "Sign up")
    end
  end
end