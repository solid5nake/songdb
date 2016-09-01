Rails.application.routes.draw do
  root 'artists#index'

  resources :artists
  resources :songs do
    collection do
      delete "cleanup"
    end
  end
end
