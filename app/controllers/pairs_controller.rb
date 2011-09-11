class PairsController < ApplicationController

  def index
   # @pairs = Pairs.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pairs }
    end
  end

  def show
    @pairs = Pairs.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pairs }
    end
  end

 def new
    @pair = Pairs.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pair }
    end
  end

end
