Rails.application.routes.draw do
  scope '/', defaults: { format: :json } do
    resources :items
    resources :restaurants
    resources :category_items
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
