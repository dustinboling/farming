Farming::Application.routes.draw do
  resources :farms do
  	resources :crops do
  		resources :beans
  	end
  end

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

	authenticated :user do
		devise_scope :user do
			root to: "farms#index"
		end
	end

	unauthenticated do
		devise_scope :user do
			root to: "pages#home", :as => "unauthenticated"
		end
	end

end
