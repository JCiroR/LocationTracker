Rails.application.routes.draw do
  get 'welcome/index'  
  root 'welcome#index'
  
  get 'signup'  => 'users#new' 
  get 'login'  => 'sessions#new'

  post 'login' => 'sessions#create'
  resources :users

  delete 'logout' => 'sessions#destroy'
end
