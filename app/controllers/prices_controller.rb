class PricesController < ApplicationController


    def index
        @prices = Price.all

        render json: @prices
    end

    def show
        @price = Price.find_by(date: params[:date])

        if @price.nil?
            render json: { message: 'No se encuentra el valor de la fecha ingresada' }
        else 
            render json: @price
        end

    end

end




















