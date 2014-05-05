Sharesomething::Application.routes.draw do
  root to: 'pages#front'

  get 'register', to: 'users#new'
  get 'home', to: 'posts#index'
  get 'words', to: 'posts#word_posts'
  get 'pics', to: 'posts#pic_posts'
  get 'vids', to: 'posts#vid_posts'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :posts, except:[:destroy] do
    resources :comments, only: [:create]
  end

  resources :categories
  resources :users, except:[:destroy]
  resources :sessions, only: [:create]

end
