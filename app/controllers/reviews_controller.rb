class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(strong_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    if @review.save
      redirect_to profile_path
    else
      render 'pages#profile'
    end
  end

  private

  def strong_params
    params.require(:review).permit(:rating, :content)
  end
end
