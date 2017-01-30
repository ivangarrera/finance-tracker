class StocksController < ApplicationController

  def search
    if params[:stock]
      @stock = Stock.find_by_ticker(params[:stock])
      #if stock doesn't exist in our database, we look up outside
      @stock ||= Stock.new_from_lookup(params[:stock])
    end

    if @stock
      #render json: @stock  ------> To see if your functionality is working
      render partial: 'lookup'
    else
      render status: :not_found, nothing: true
    end
  end

end