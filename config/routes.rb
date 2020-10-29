Rails.application.routes.draw do
  get '/' => 'top#top'
  get 'top/serch' => 'top#serch'
  get 'top/serchtag' => 'top#serchtag'
  resources :posts
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end
end
