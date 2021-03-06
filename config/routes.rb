Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index"
  resources :posts, only: [:index]

  namespace :admin do
    resources :users, only: [:index, :edit, :update]
    resources :categories
    root "categories#index"
  end  

end
