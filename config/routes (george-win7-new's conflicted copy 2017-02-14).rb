Flow::Application.routes.draw do
 
  root :to => "documents#my_pending_documents"
 	
 	resources :documents
 	resources :institutions
  resources :categories
  resources :users
  resource  :session
  
  match '/login' => "sessions#new", :as => "login"
	match '/logout' => "sessions#destroy", :as => "logout"
 
  match '/search' => "documents#search", :as => "search"
	match '/search_results' => "documents#search_results", :as => "search_results"
 
 
 
  #αυτά θα είναι στο δεξί menu 
  match '/my_pending_documents',  :to => 'documents#my_pending_documents'
  match '/my_overdue_documents',  :to => 'documents#my_overdue_documents'
  match '/pending_documents',     :to => 'documents#pending_documents'
  match '/overdue_documents',     :to => 'documents#overdue_documents'
  match '/all_documents',         :to => 'documents#all_documents'
  match '/george',                :to => 'documents#george'
  match '/archived_documents',    :to => 'documents#archived'
 
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  

  
end
