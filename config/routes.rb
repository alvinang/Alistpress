Alistpress::Application.routes.draw do  
    
  authenticated :user do
    root to: 'api/atemplates#index', as: :authenticated_root
  end  
  
  root to: 'home#index'
  get '/guest', to: 'home#guest'
  
  devise_for :users, 
              path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'new' },  
              skip: :sessions,
              controllers: { omniauth_callbacks: 'omniauth_callbacks' }
              
  devise_scope :user do
    get '/login',     to: 'devise/sessions#new'     , as: :new_user_session
    post '/login',    to: 'devise/sessions#create'  , as: :user_session
    delete '/logout', to: 'devise/sessions#destroy' , as: :destroy_user_session  
  end              
  
  namespace :api, defaults: { format: :json } do 
    resources :atemplates , only: [:create, :destroy, :index, :show, :update]
    resources :themes     , only: [:create, :destroy, :index, :show, :update]    
    resources :todos      , only: [:create, :destroy, :index, :update]    
  end

end