Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
 resources :articles
# resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  get 'ebby', to: 'pages#ebby'
  get 'signup', to: 'users#new'
  # post 'users', to: 'users#create' --replaced with above since we get all restful apis & route
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
end
