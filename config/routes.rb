Jobshadow::Application.routes.draw do
    
  

  resources :matches

  resources :student_interests

  resources :schools

  get "welcome/admin"
  get "welcome/professional"
  get "welcome/student"
  get "welcome/college_student"
  
  devise_for :users
  root 'static_pages#home'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/students', to: 'static_pages#students', via: 'get'
  match '/professionals', to: 'static_pages#professionals', via: 'get'
  match '/administrators', to: 'static_pages#administrators', via: 'get'
  match '/businesses', to: 'static_pages#businesses', via: 'get'
  match '/schools',  to: 'static_pages#schools', via: 'get'
  
  resources :mous
  resources :businesses
  resources :categories do
    resources :subcategories
  end
  

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
