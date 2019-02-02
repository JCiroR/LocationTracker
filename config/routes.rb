Rails.application.routes.draw do
  root 'users#index'
  get 'signup'  => 'users#new' 
  get 'login'  => 'sessions#new'

  post 'login' => 'sessions#create'
  resources :users do
    resources :points
  end

  delete 'logout' => 'sessions#destroy'
end
