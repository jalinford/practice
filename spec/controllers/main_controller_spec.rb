require 'spec_helper'

describe MainController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'resume'" do
    it "returns http success" do
      get 'resume'
      response.should be_success
    end
  end

end