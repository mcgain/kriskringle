require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end

    it "should create a new kringle" do
      mock Kringle
      get 'index'
      assigns(:kringle).should be_a Kringle
    end

  end

end
