json.restaurants @restaurants do |restaurant|
  json.partial! 'restaurant', restaurant: restaurant
end
