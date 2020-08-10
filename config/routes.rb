Rails.application.routes.draw do
  get '/cooks', to: "cooks#index"
  get '/cooks/new', to: "cooks#new"
  post '/cooks/create', to: "cooks#create"
  delete '/cooks/:id/delete', to: "cooks#destroy"
  get '/cooks/:id/edit', to: "cooks#edit"
  patch "/cooks/:id/update", to: "cooks#update"
  get '/cooks/:id', to: "cooks#show"
  root to: 'todolists#index'
  get '/:id/edit', to: 'todolists#edit'
  get '/new', to: 'todolists#new'
  post '/create', to: 'todolists#create'
  patch "/:id/update", to: "todolists#update"
  delete '/todo/:id/delete', to: "todolists#destroy"

  get '/shoppings', to: "shoppings#index"
  get '/cooks/:id/shoppings/new', to: "shoppings#new"
  post '/cooks/:id/shoppings/create', to: "shoppings#create"
  delete '/shoppings/delete', to: "shoppings#destroy"
end
