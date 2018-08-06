Rails.application.routes.draw do
  resources :schedules
  resources :rooms
  resources :speakers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'schedules#index'
end
