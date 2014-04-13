Sharesomething::Application.routes.draw do
  root to: 'pages#front'

  get 'register', to: 'users#register'
  get 'home', to: 'posts#index'

  resources :posts
  resources :categories

  resources :words
  resources :pics
  resources :vids

end
