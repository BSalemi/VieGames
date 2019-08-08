Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#home'


  resources :users, only: [:index, :show, :edit, :create, :update, :delete]
  resources :companies, only: [:index, :show]
  resources :systems, only: [:index, :show]
  resources :games, only: [:index, :show, :new, :create] do 
    resources :events, only: [:index, :new, :create, :show]
  end 

  resources :events, only: [:index, :new, :create, :show, :edit, :update, :delete]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  get '/delete' => 'users#delete_page'
  delete '/delete' => 'users#delete'

  get '/add_game/:id' => 'user_games#add_game', as: "add_game"
  get '/delete_game/:id' => 'user_games#delete_game', as: "delete_game"

  get '/add_event/:id' => 'user_events#add_event', as: "add_event"
  get '/delete_event/:id' => 'user_events#delete_event', as: "delete_event"

  get '/rating/:rating' => 'games#rating', as: "rating"



end
