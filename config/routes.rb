Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :creators
      resources :receptions
      resources :guests
      resources :photos
      resources :comments
    end
  end
end
