Rails.application.routes.draw do
  root "sales#index"
  resources :sales
  resources :takes
end
