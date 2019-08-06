Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#home'


  resources :users, only: [:index, :show, :edit, :create, :update, :delete]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
 

  get '/delete' => 'users#delete_page'
  delete '/delete' => 'users#delete'



end
