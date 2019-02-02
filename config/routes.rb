Rails.application.routes.draw do
  root 'users#index'

  get 'login'  => 'sessions#new'
  get 'signup'  => 'users#new' 
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users do
    resources :points
  end
end
