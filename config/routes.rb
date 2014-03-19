Alistpress::Application.routes.draw do
  root to: 'home#index'  
  
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'new' }
end
