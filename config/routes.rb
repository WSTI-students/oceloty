Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions",
                                                   registrations: "users/registrations",
                                                   passwords: "users/passwords" }

  devise_for :shelters, path: 'shelters', controllers: { sessions: "shelters/sessions",
                                                         registrations: "shelters/registrations",
                                                         passwords: "shelters/passwords" }

  root to: 'pets#index'

  resources :shelters, only: [] do
    resources :pets, only: [:index], controller: 'shelters/pets'
  end
end
