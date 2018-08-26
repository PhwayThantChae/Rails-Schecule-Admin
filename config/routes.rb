Rails.application.routes.draw do
  devise_for :users
  resources :schedules
  resources :rooms
  resources :speakers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :schedules
      resources :rooms
      resources :speakers
    end
  end

  root to: 'schedules#index'
  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end
  # <% if user_signed_in? %>
  #   Logged in as <strong><%= current_user.email %></strong>.
  #   <%= link_to 'Edit profile', edit_user_registration_path, :class => 'navbar-link' %> |
  #   <%= link_to "Logout", destroy_user_session_path, method: :delete, :class => 'navbar-link'  %>
  #   root to: 'schedules#index'
  # <% else %>
  #   <%= link_to "Sign up", new_user_registration_path, :class => 'navbar-link'  %> |
  #   <%= link_to "Login", new_user_session_path, :class => 'navbar-link'  %>
  # <% end %>
end
