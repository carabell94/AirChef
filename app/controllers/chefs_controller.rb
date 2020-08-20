class ChefsController < ApplicationController
  def index
    if params[:query1].present?
      @chefs = Chef.search_by_location(params[:query1])
      @searched_chefs = @chefs.geocoded

        @markers = @searched_chefs.map do |chef|
          {
            lat: chef.latitude,
            lng: chef.longitude,
            infoWindow: render_to_string(partial: "info_window", locals: { chef: chef }),
            image_url: "https://res.cloudinary.com/dzjxqunz7/image/upload/v1597931839/knifefork_ywuj7u.png"
          }
        end
    else
      @chefs = Chef.geocoded

        @markers = @chefs.map do |chef|
          {
            lat: chef.latitude,
            lng: chef.longitude,
            infoWindow: render_to_string(partial: "info_window", locals: { chef: chef }),
            image_url: "https://res.cloudinary.com/dzjxqunz7/image/upload/v1597931839/knifefork_ywuj7u.png"
          }
        end
    end
  end

  def show
    @chef = Chef.find(params[:id])
    @booking = Booking.new
  end

  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(strong_params)
    if @chef.save
      redirect_to chef_path(@chef)
    else
      render :new
    end
  end

  def edit
    @chef = Chef.find(params[:id])
  end

  def update
    @chef = Chef.find(params[:id])
    if @chef.update(strong_params)
      redirect_to chef_path(@chef)
    else
      render :update
    end
  end

  def destroy
    @chef = Chef.find(params[:id])
    @chef.destroy
    redirect_to chefs_path
  end

  private

  def strong_params
    params.require(:chef).permit(:name, :years_experience, :hourly_rate, :location, :cuisines, :bio, :photo, dish_photos: [])
  end
end
