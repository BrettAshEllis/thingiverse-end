Rails.application.routes.draw do
  root "users#index"
  resources :users do
    get :pizza, on: :collection
  end
  # get "/users/pizza", to: "users#pizza"
  resources :orders
end
