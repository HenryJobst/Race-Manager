RaceManager::Application.routes.draw do

  get "controll_results/show"

  resources :stamps
  resources :events

  resources :subevents
  resources :teams

  resources :event_competitors
  resources :team_competitors

  resources :competitors
  resources :clubs

  get "static_pages/home"
  
  match '/about', to: 'static_pages#about'
  match '/competitors', to: 'competitors#show'
  match '/clubs', to: 'clubs#show'
  match '/events', to: 'events#show'
  match '/subevents', to: 'subevents#show'
  match '/event_competitors', to: 'event_competitors#show'
  match '/teams', to: 'teams#show'
  match '/team_competitors', to: 'team_competitors#show'
  match '/select_event', to: 'events#select'
  
  match '/reports/event_competitors', to: 'reports#event_competitors'    
  match '/reports/event_results', to: 'reports#event_results'
  match '/reports/event_temporary_results', to: 'reports#event_temporary_results'
  match '/reports/event_station_results', to: 'reports#event_station_results'
  
  match ':controller/:action/:controll_id'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'static_pages#home'
  
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
