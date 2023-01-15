Rails.application.routes.draw do
  # get 'root/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :greetings, only: %i[index]
  end
  # Defines the root path route ("/")
  root 'root#index'
end
