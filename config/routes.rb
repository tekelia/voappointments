Rails.application.routes.draw do
  
  devise_for :users
  resources :calls do 
  	resources :comments
  end
  root "calls#index"

  get '/about', to: 'pages#about'
end
