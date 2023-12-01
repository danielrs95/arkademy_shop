Rails.application.routes.draw do
  root 'products#index'
  namespace :admin do
    resources :products
  end
  resources :products, only: %i[index show]
end
