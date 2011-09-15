class PairsController < ApplicationController

  def index

  end

  def show
    @pairs = Pairs.all
  end

  def new

  end

  def create

      #@temp1=Pairs.find_by_name1(params[:pair][:name1])
      ##@temp2=Pairs.find_by_name2(params[:pair][:name2])
      #if @temp1.name2==params[:pair][:name2]
      #      @temp1.frequency.succ
      #      Pairs.save(@temp1)

      @pair=Pairs.create(:name1=>params[:pair][:name1],:name2=>params[:pair][:name2],:frequency=>1)
      #end
      ##@pairs=Pairs.new
      # @pair.create_pair(@pair.name1,@pair.name2)
       #Pairs.create_pair(@pairs.name1,@pairs.name2)
  end

end
