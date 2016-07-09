Rails.application.routes.draw do

  root "restaurants#index"

  resources :restaurants, only: [:new, :create, :index, :show] do
    resources :reviews, only: [:new, :create]
  end

  resources :categories, only: [:index, :show]

end
