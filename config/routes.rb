Rails.application.routes.draw do
  resources :studies, only: [:index, :show]
  
end
