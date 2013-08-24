ShirtApp::Application.routes.draw do
  root "shirts#index"

  get 'shirts/search' , to: 'shirts#search' , as: 'shirts_search'
  resources :shirts;
end
