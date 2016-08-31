Rails.application.routes.draw do
  root 'artists#index'
  get 'songs/new'

  get 'songs/create'

  get 'songs/update'

  get 'songs/edit'

  get 'songs/destroy'

  get 'songs/index'

  get 'songs/show'

  get 'artists/new'

  get 'artists/create'

  get 'artists/update'

  get 'artists/edit'

  get 'artists/destroy'

  get 'artists/index'

  get 'artists/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
