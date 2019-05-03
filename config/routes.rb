Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :rooms, :answers, :users, :authentication

      	post '/login', to: 'authentication#create'
      	get '/profile', to: 'users#profile'
      	post '/token', to: 'accounts#create'
    end
  end

end
