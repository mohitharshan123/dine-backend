# frozen_string_literal: true

class CategoryItemsController < ApplicationController
  before_action :load_restaurant!, only: [:show]

  def show
    @categories = @restaurant.categories
  end

  private

  def load_restaurant!
    @restaurant = Restaurant.find(params[:id])
  end
end
