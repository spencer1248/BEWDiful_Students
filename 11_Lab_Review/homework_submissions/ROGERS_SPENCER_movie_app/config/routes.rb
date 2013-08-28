MoviesApp::Application.routes.draw do
  devise_for :users
  root "movies#index"
  resources :movies do
    resources :comments
  end
  get 'search', to: 'movies#search'
end
