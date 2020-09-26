class PricesController < ApplicationController


    def index
        @prices = Price.all

        render json: @prices
    end

    def show
        @price = Price.find_by(date: params[:date])

        render json: @price  
    end

end

