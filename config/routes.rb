Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users

  root "pages#home"
  resources :messages, only: %i[index show new create]
end
