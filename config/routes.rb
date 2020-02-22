Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "heroes#index"
  resources :heroes, only: %i(index show new create) do
    resources :skills, only: %i(new create)
  end
  resources :skills, only: :destroy
end
