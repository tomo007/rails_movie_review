Rails.application.routes.draw do
 
  devise_for :users
  resources :movies do
  	collection do
  		get "search"
  	end
 		resources :reviews, exepct: [:show, :index]
	end
  root "movies#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
