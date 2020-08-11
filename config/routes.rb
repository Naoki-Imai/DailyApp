Rails.application.routes.draw do
  get 'homes/home'
  get '/cooks', to: "cooks#index"
  get '/cooks/new', to: "cooks#new"
  post '/cooks/create', to: "cooks#create"
  delete '/cooks/:id/delete', to: "cooks#destroy"
  get '/cooks/:id/edit', to: "cooks#edit"
  patch "/cooks/:id/update", to: "cooks#update"
  get '/cooks/:id', to: "cooks#show"
  
  root to: 'homes#home'
  get '/todos', to:"todolists#index"
  get '/todos/:id/edit', to: 'todolists#edit'
  get '/todos/new', to: 'todolists#new'
  post '/todos/create', to: 'todolists#create'
  patch "/todos/:id/update", to: "todolists#update"
  delete '/todos/:id/delete', to: "todolists#destroy"

  get '/shoppings', to: "shoppings#index"
  get '/cooks/:id/shoppings/new', to: "shoppings#new"
  get '/shoppings/addshopping', to: "shoppings#addshopping"
  post '/shopping/create', to: "shoppings#createshopping"
  post '/cooks/:id/shoppings/create', to: "shoppings#create"
  delete '/shoppings/delete', to: "shoppings#destroy"
end
