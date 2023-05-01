class Category < ApplicationRecord
  belongs_to :restaurant
  has_many :category_items, dependent: :destroy
end
