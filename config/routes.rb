Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users/:id/difficult', to: 'users#difficult', as: 'difficult_sets'
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  
  resources :users, only: [:new, :create, :show, :index] do
    resources :legosets, only: [:index]
  end
  resources :legosets, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :themes, only: [:index, :show, :new, :create] 

end
