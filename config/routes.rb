Rails.application.routes.draw do
  get '/movies' => 'movies#index', as: 'movies'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html\
  get '/movies/:id' => 'movies#show', as: 'show_page'
  get 'show' => 'movies#show', as: 'show'
  get 'shows' => 'movies#index', as: 'shows'
  delete 'show' => 'movies#destroy', as: 'delete'
  post '/create_comment', to: 'movies#create_comment'
  delete '/delete_comment', to: 'movies#delete_comment'
  post '/add_movie', to: 'movies#add_movie'
  resources :movies

  resources :comments
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "home#index"
end
