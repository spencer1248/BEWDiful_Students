GamesOnRails::Application.routes.draw do

  resources :games do
    resources :secret_number
  end
  get "games", to: "games#index"
  get "games/magic-eight-ball", to: "games#magic_eight_ball", as: "magic_eight_ball"

  get "games/magic-eight-ball/:question", to: "games#magic_eight_ball_question"
  get "games/secret-number", to: "games#secret_number"
  get "games/secret-number/:guess", to: "games#secret_number_guess", as: "secret_number_guess"

  get "games/rock-paper-scissors", to: "games#rock_paper_scissors"
  get "games/rock-paper-scissors/:throw", to: "games#rock_paper_scissors_play", as: "rock_paper_scissors_play"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end