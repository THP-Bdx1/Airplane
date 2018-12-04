Rails.application.routes.draw do
  
  get 'bookings/new/:id', to: 'bookings#new'
  post 'bookings/new/:id', to: 'bookings#create'
  get 'bookings/show', to: 'bookings#show'
  root 'flights#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
