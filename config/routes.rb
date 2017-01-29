Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  resources :categories
  resources :products
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  # devise_for :users, :controllers => { registrations: 'registrations' }
end
