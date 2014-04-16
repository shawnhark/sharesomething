Sharesomething::Application.routes.draw do
  root to: 'pages#front'

  get 'register', to: 'users#register'
  get 'home', to: 'posts#index'
  get 'words', to: 'words#index'
  get 'pics', to: 'pics#index'
  get 'vids', to: 'vids#index'

  resources :posts
  resources :categories

end
