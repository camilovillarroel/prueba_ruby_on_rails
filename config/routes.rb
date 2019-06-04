Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/todos/list'
  get '/todos', to: 'todos#index'
  root 'todos#index'
  get 'todos/new'
  post '/todos', to: 'todos#create'
  get '/todos/:id', to: 'todos#show', as:'todo'
  get '/todos/:id/edit', to: 'todos#edit', as: 'edit_todo'
  patch '/todos/:id', to: 'todos#update'
  delete '/todos/:id', to: 'todos#destroy' 
  post '/todos/:id/complete', to: 'todos#complete', as: 'complete_todo'
  
  
end
