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

      Pairs.stub!(:all).and_return(:something)
      get 'show'
      response.should be_success
      assert_equal(:something,assigns(:pairs))
    end
  end

  describe "should get new" do
   it "should be successful" do
    get 'new'
    response.should be_success
  end
  end

  describe "should create a pair" do
    it "should be successful" do

      db_mock=mock(Pairs, :name1=>"abc", :name2=>"xyz",:frequency=>1)
      #assert_difference 'Pair.count'=> +1 do
      Pairs.should_receive(:create).with(:name1 => "abc", :name2 => "xyz",:frequency=>1).and_return(db_mock)
      post 'create', {"pair" => {"name1" => "abc","name2" => "xyz"}}

    end
  end

  describe "should not create a duplicate pair" do
    it "should be successful" do

    end

  end
   #describe "should make entry into database" do
   #  it "should be successful" do
   #   Pairs.any_instance.stubs(:valid?).returns(true)
   #   post 'create'
   #  end
   #end


end