Rails.application.routes.draw do
  get 'books/index' => 'books#index'

  get 'books/new'
  post 'books/new' => 'books#create'

  get 'books/edit'

  get 'books/:id' => 'books#show', as: 'book'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
