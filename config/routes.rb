Rails.application.routes.draw do
  namespace :admin do
    resources :products
  end
  resources :products, only: %i[index show]
end
