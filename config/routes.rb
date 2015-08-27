Rails.application.routes.draw do
  root 'rsvps#show'
  resources :rsvps

end
