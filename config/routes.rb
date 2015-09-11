Rails.application.routes.draw do
  get "tops/show"
  get "tops/new"
  get "tops/edit"
  get "tops/index"
  get "bottoms/show"
  get "bottoms/new"
  get "bottoms/edit"
  get "bottoms/index"
  get "outfits/show"
  get "outfits/new"
  get "outfits/edit"
  get "outfits/index"

  resources :outfits

  resources :bottoms

  resources :tops

  get 'home', to: 'home#index', as: :home
  get 'home/closet', to: 'home#closet', as: :closet

  root to: 'home#index'
end
