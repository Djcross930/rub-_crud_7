Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/cats" => "cats#index"
  get "/cats/:id" => "cats#show"
  post "/cats" => "cats#create"
  patch "/cats/:id" => "cats#update"
  delete "/cats/:id" => "cats#destroy"
  get "/foods" => "foods#index"
end
