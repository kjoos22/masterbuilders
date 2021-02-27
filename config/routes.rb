Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users/:id/difficult', to: 'users#difficult', as: 'difficult_sets'
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  
  resources :users
  resources :legosets 

end
