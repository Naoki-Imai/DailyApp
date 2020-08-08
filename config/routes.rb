Rails.application.routes.draw do
  root to: 'todolists#index'
  get '/:id/edit', to: 'todolists#edit'
  get '/new', to: 'todolists#new'
  post '/create', to: 'todolists#create'
  patch "/:id/update", to: "todolists#update"
  delete '/:id/delete', to: "todolists#destroy"
end
