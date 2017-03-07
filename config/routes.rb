Rails.application.routes.draw do
  resources :evaluations
  resources :place_to_eats
  resources :categories
  resources :beefs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
