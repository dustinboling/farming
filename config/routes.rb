Farming::Application.routes.draw do
  
  resources :farms do
  	resources :beans
  	resources :crops
  end

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  root 'pages#home'

end
