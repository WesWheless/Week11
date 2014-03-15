require 'open-uri'

class FlighttestController < ApplicationController

   def index
      @flight_list = Flighttest.all
      @arrival = params[:arrival]
      @flight = Flighttest.where(:arrival => params[:arrival])
    end

    def home
    	@url = URI.escape("http://api.openweathermap.org/data/2.5/weather?q=Chicago&units=imperial")
    	@json_data = open(@url).read
    	@data = JSON.parse(@json_data)
    end
   
   def search
   end
end
