Sharesomething::Application.routes.draw do
  root to: 'pages#front'

  get 'register', to: 'users#new'
  get 'home', to: 'posts#index'
  get 'words', to: 'posts#word_posts'
  get 'pics', to: 'posts#pic_posts'
  get 'vids', to: 'posts#vid_posts'

  resources :posts
  resources :categories
  resources :users

end
