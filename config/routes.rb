Rails.application.routes.draw do
  resources :cart_items
  resources :hair_products

  root 'hair_products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
