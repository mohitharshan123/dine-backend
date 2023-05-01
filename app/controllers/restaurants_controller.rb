# frozen_string_literal: true

class RestaurantsController < ApplicationController
  before_action :load_restaurant!, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    render
  end

  private

  def load_restaurant!
    @restaurant = Restaurant.find(params[:id])
  end
end
