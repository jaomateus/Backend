Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/get_client_token', to: 'tokens#get_client_token'
  get '/all_plants', to: 'plants#all_plants'
end
