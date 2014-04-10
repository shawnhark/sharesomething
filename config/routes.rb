Sharesomething::Application.routes.draw do
  root to: 'pages#front'

  get 'register', to: 'users#register'

  resources :words
  resources :pics
  resources :vids

end
