class PricesController < ApplicationController


    def index
        @prices = Price.all

        render json: @prices
    end

    def show
        @price = Price.find_by(date: params[:date])

        if @price.length > 0
            render json: @price
        else 
            rnder json: { message: 'No se encuentra el valor de la fecha ingresada'}
        end

    end

end


















