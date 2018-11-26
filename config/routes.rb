Rails.application.routes.draw do
  root "books#index"
  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show', as: 'book'
  delete '/books/:id', to: 'books#destroy'
  get '/books/new', to: 'books#new'
  post '/books', to: 'books#create', as: 'new_book'
  get 'users/:id', to: 'users#show', as: 'user'
  get 'authors/:id', to: 'authors#show', as: 'author'
  delete 'authors/:id', to: 'authors#destroy', as: 'review'
  delete 'reviews/:id', to: 'reviews#destroy'
  get 'reviews/new', to: 'reviews#new', as: 'new_review'
  post 'reviews/', to: 'reviews#create'
end
