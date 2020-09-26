class PricesController < ApplicationController
    include ActionController::HttpAuthentication::Basic::ControllerMethods
    http_basic_authenticate_with name: "juan", password: "12345", except: :index


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




















