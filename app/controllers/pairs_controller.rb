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


end
