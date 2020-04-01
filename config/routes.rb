Rails.application.routes.draw do
  root to: "restaurants#index"
  resources :restaurants # generates all the basic routes!

  # get    "restaurants",          to: "restaurants#index"

  # get    "restaurants/new",      to: "restaurants#new",  as: :new_restaurant
  # post   "restaurants",          to: "restaurants#create"

  # get    "restaurants/:id",      to: "restaurants#show", as: :restaurant

  # get    "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch  "restaurants/:id",      to: "restaurants#update"

  # delete "restaurants/:id",      to: "restaurants#destroy"

  # NB:
  # - The `show` route needs to be after the `new` route, otherwise 'new' will be taken as the :id param
  # - The requests (routes) with a verb different than `get` won't need a view, they will just act on the database
end
