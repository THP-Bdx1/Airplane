class BookingsController < ApplicationController
  def new
    @booking=Booking.new
    @flight=Flight.find(params[:id])
    @passenger_number = params[:passenger_number]
    @array=[]
  end

  def create

    @passenger_number.to_i.times do
    Booking.create!(passenger_name: params[:passenger_name], flight_id: params[:id])
        puts
puts "Ceci est mon superbe #{@array} MADERFUKKKKKKKER"
puts
puts "ET LÀ LES PARAMS ENCULÉ #{params[:booking][:passenger_name]}"
puts
    end
      redirect_to '/bookings/show/'
  end

  def show
    @bookings=Booking.all
  end
end
