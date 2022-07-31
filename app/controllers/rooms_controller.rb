class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def show
    @room = Room.find_by(id: params[:id])
    @reservation = Reservation.new
  end  

  def create
    @room = Room.new(params.require(:room).permit(:room_name, :room_introduction, :room_charge, :room_address))

    if @room.save
      redirect_to :rooms
    else
      render "new"
    end

  end

end
