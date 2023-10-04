Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/books', to: 'books#index' 
  get '/books/newbook', to: 'books#newbook'
  post '/books', to: 'books#create'
  get  '/books/:id/modify', to: 'books#modify', as: :modify_books
  patch '/books/:id', to: 'books#update', as: :book
  delete '/books/:id', to: 'books#destroy'
end
