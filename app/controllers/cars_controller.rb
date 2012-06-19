class CarsController < ApplicationController
  def index
    @cars = Car.all
  end
  
  def new
    @car = Car.new
  end
end
