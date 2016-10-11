Rails.application.routes.draw do
  resources :calls

  root "calls#index"
end
