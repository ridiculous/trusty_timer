TrustyTimer::Application.routes.draw do
  resources :people
  resources :timers
  resources :users

  resources :welcome, only: [:create, :logout]

  root 'welcome#index'

  get 'bye' => 'welcome#logout'

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
=begin
      people GET    /people(.:format)          people#index
              POST   /people(.:format)          people#create
   new_person GET    /people/new(.:format)      people#new
  edit_person GET    /people/:id/edit(.:format) people#edit
       person GET    /people/:id(.:format)      people#show
              PATCH  /people/:id(.:format)      people#update
              PUT    /people/:id(.:format)      people#update
              DELETE /people/:id(.:format)      people#destroy
       timers GET    /timers(.:format)          timers#index
              POST   /timers(.:format)          timers#create
    new_timer GET    /timers/new(.:format)      timers#new
   edit_timer GET    /timers/:id/edit(.:format) timers#edit
        timer GET    /timers/:id(.:format)      timers#show
              PATCH  /timers/:id(.:format)      timers#update
              PUT    /timers/:id(.:format)      timers#update
              DELETE /timers/:id(.:format)      timers#destroy
        users GET    /users(.:format)           users#index
              POST   /users(.:format)           users#create
     new_user GET    /users/new(.:format)       users#new
    edit_user GET    /users/:id/edit(.:format)  users#edit
         user GET    /users/:id(.:format)       users#show
              PATCH  /users/:id(.:format)       users#update
              PUT    /users/:id(.:format)       users#update
              DELETE /users/:id(.:format)       users#destroy
welcome_index POST   /welcome(.:format)         welcome#create
         root GET    /                          welcome#index
          bye GET    /bye(.:format)             welcome#logout

=end
end
