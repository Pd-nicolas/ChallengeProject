Rails.application.routes.draw do
  root 'search#index'

  get 'search', to: 'search#index'

  post 'favorites/toggle', to: 'favorites#toggle', as: 'toggle_favorite'

  get 'favorites', to: 'favorites#index'

end
