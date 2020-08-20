class BookingsController < ApplicationController
  # def index
  #   @bookings = Booking.all
  # end

  def show
    @bookings = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(strong_params)
    @booking.user = current_user
    @chef = Chef.find(params[:chef_id])
    @booking.chef = @chef
    if @booking.save!
      redirect_to profile_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(strong_params)
      redirect_to profile_path
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to root_path
  end

  private

  def strong_params
    params.require(:booking).permit(:user_id, :date, :guests, :location, :cuisine, :chef_id, :review_rating, :review_content, :duration)
  end
end
