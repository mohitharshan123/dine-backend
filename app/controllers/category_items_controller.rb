# frozen_string_literal: true

class CategoryItemsController < ApplicationController
  before_action :load_restaurant!, only: [:index]

  def index
    @categories = @restaurant.categories
  end

  private

  def load_restaurant!
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
