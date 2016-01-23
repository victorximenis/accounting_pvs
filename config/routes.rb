Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'home#index'

  resources :protocols

  get '/protocols/:id/approve', to: 'protocols#approve_protocol', as: 'approve_protocol'

end
