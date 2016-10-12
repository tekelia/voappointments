Rails.application.routes.draw do
  
  resources :calls do 
  	resources :comments
  end
  root "calls#index"

  get '/about', to: 'pages#about'
end
