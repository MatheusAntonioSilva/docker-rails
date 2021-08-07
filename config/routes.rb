Rails.application.routes.draw do

  resources :checks, only: [:index]
end
