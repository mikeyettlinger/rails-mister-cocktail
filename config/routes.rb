Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'

  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
    resources :reviews, only: [:new, :create, :show]
  end
  # get    'cocktails', to: 'cocktails#index', as: :cocktails

  # get    "cocktails/new",      to: "cocktails#new",  as: :new_cocktail
  # post   "cocktails",          to: "cocktails#create"

  # # # NB: The `show` route needs to be *after* `new` route.
  # get    "cocktails/:id",      to: "cocktails#show", as: :cocktail

  # ________________________________________________________________

  # get    "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch  "restaurants/:id",      to: "restaurants#update"

  # delete "restaurants/:id",      to: "restaurants#destroy"
end
