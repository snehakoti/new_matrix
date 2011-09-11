require 'spec_helper'

describe PairsController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "should show pairs" do
    it "should be successful" do
      get 'show'
      response.should be_success
     assert_not_nil assigns(:pairs)
    end
  end

end