Rails.application.routes.draw do
  resources :ranks
  resources :rank_types
  resources :people
  resources :addresses
  resources :militaries

  delete '/addresses/drop', to: 'addresses#drop'
  delete '/people/drop', to: 'people#drop'
  delete '/militaries/drop', to: 'militaries#drop'
  delete '/rank_types/drop', to: 'rank_types#drop'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
