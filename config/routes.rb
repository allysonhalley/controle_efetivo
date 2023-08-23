Rails.application.routes.draw do
  resources :ranks
  resources :rank_types
  resources :people
  resources :addresses
  resources :militaries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
