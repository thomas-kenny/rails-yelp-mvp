Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end

# get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
# post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
# end


# get 'restaurants', to: 'restaurants#index'
# get 'restaurants/new', to: 'restaurants#new'
# post 'restaurants', to: 'restaurants#create'
# get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
