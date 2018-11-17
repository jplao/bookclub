Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#index'

  get '/books', to: 'books#index'
  get '/books/new', to: 'books#new', as: 'new_book'
  post '/books', to: 'books#create'
  get '/books/:id', to: 'books#show', as: 'book'
  delete '/books/:id', to: 'books#destroy'

  get 'users/:id', to: 'users#show', as: 'user'

  get 'authors/:id', to: 'authors#show', as: 'author'
  delete '/authors/:id', to: 'authors#destroy'

  delete '/reviews/:id', to: 'reviews#destroy'
  get '/reviews/new', to: 'reviews#new', as: 'new_review'
  get '/reviews/:id', to: 'review#show', as: 'review'
  post '/reviews', to: 'reviews#create'
end
