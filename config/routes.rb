Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/programs", to: 'pages#programs'
  get "/professionals", to: 'pages#professionals'


  resources :tests do
    resources :answers
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
