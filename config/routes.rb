Sharesomething::Application.routes.draw do
  root to: 'pages#front'

  get 'register', to: 'users#register'
  get 'news_posts', to: 'news_posts#index'
  get 'words', to: 'words#index'
  get 'vids', to: 'vids#index'
  get 'pics', to: 'pics#index'

end
