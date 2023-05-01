# frozen_string_literal: true

json.categories @categories do |category|
  json.name category.name
  json.items category.category_items do |item|
    json.name item.name
    json.price item.price
    json.description item.description
  end
end
