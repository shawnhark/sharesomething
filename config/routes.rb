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
  get 'new_posts', to: 'posts#new'

  resources :posts, except:[:destroy] do
    collection do
      post :search, to: 'posts#search'
    end
    member do
      post 'vote'      
    end
    resources :comments, only: [:create] do
      collection do
        post :search, to: 'posts#search'
      end
      member do
        post 'vote'      
      end
    end
  end

  resources :categories
  resources :users, except:[:destroy]
  resources :sessions, only: [:create, :new]

end
