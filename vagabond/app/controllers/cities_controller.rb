class CitiesController < ApplicationController
  def new
  	@city = City.new
  end

  def edit
  end

  def index
  	@cities = City.all
  end

  def show
  	@city = City.find_by_id(params[:id])
  end
end
