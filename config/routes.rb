Rails.application.routes.draw do
  devise_for :users
  resources :schedules
  resources :rooms
  resources :speakers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  <% if user_signed_in? %>
    Logged in as <strong><%= current_user.email %></strong>.
    <%= link_to 'Edit profile', edit_user_registration_path, :class => 'navbar-link' %> |
    <%= link_to "Logout", destroy_user_session_path, method: :delete, :class => 'navbar-link'  %>
    root to: 'schedules#index'
  <% else %>
    <%= link_to "Sign up", new_user_registration_path, :class => 'navbar-link'  %> |
    <%= link_to "Login", new_user_session_path, :class => 'navbar-link'  %>
  <% end %>
end
