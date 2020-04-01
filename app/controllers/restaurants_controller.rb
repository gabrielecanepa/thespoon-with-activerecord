class RestaurantsController < ApplicationController
  # Execute this method (find the restaurant) before the specified actions
  before_action :set_restaurant, only: %i[show edit update destroy]

  # Display all instances
  def index
    @restaurants = Restaurant.all
  end

  # Show one instance
  def show; end

  # Show form with a new empty instance
  def new
    @restaurant = Restaurant.new
  end

  # Create a new instance (POST request -> no need for view)
  def create
    restaurant = Restaurant.create(restaurant_params)

    redirect_to restaurant_path(restaurant.id) # show the created restaurant
  end

  # Show form with an instance to edit
  def edit; end

  # Update an instance (PATCH request -> no need for view)
  def update
    @restaurant.update(restaurant_params)

    redirect_to restaurant_path(@restaurant.id) # show the updated restaurant
  end

  # Delete an instance (DELETE request -> no need for view)
  def destroy
    @restaurant.delete

    redirect_to root_path # show all restaurants
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id].to_i)
  end

  # Strong parameters 💪
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
