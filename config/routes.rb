Rails.application.routes.draw do
  scope '/', defaults: { format: :json } do
    resources :items
    resources :restaurants do
      get 'menu', to: 'category_items#index'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
