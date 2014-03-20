Alistpress::Application.routes.draw do  
    
  authenticated :user do
    root to: 'api/atemplates#index', as: :authenticated_root
  end  
  
  root to: 'home#index'
  
  devise_for :users, 
              path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'new' },  
              skip: :sessions
              
  devise_scope :user do
    match '/login', via: :get, to: 'devise/sessions#new', as: :new_user_session
    match '/login', via: :post,  to: 'devise/sessions#create', as: :user_session
    match '/logout', via: :delete, to: 'devise/sessions#destroy', as: :destroy_user_session  
  end              
  
  namespace :api, defaults: { format: :json } do 
    resources :atemplates, only: [:create, :destroy, :index, :show, :update]
  end

end
