require 'pry'
class FlightsController < ApplicationController
  
  def index
    @airports=Airport.all
    @flights=Flight.all
    @superflight = Flight.new
    
    @flight = []
    @flights.each do |vol|
      if vol.arrival_airport.city == params[:arrival_airport] && vol.departure_airport.city == params[:departure_airport] && vol.departure_date == params[:departure_date]
        @flight << {"departure_airport" => vol.departure_airport.city, "arrival_airport" => vol.arrival_airport.city, "departure_date" => vol.departure_date, "id" => vol.id}
      end
    end
  end

  private

  def flights_params
    params.require(:flight).permit(:arrival_airport, :departure_airport)
  end
end