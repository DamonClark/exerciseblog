Rails.application.routes.draw do
  
  devise_for :users, :skip => [:registrations] 

  resources :posts do
    resources :comments
  end


  root "posts#index"

  get '/about', to: 'pages#about'
  get '/project', to: 'pages#project'
end
