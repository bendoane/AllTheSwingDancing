Rails.application.routes.draw do
  resources :events do
    member do
      put :attendance_status_check
    end
  end
  resources :users, :only => [:new, :create]
  resources :sessions, :only => [:new, :create, :show, :destroy]
  resources :authorizations, :only => [:create, :blank, :failure, :destroy]
  match '/auth/:provider/callback' => 'authorizations#create',via: [:get, :post]
  match '/auth/failure' => 'authorizations#failure', via: [:get, :post]
  match '/auth/:provider' => 'authorizations#blank', via: [:get, :post]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'events#index'

  get 'info/about' =>"info#about"
  get 'info/contact' =>"info#contact"
  get 'info/my_events' =>"info#my_events"
  get 'info/privacy_policy' => "info#privacy_policy"

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
