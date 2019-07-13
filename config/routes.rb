Rails.application.routes.draw do
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions",
                                                   unlock: "users/unlocks",
                                                   registrations: "users/registrations",
                                                   passwords: "users/passwords",
                                                   confirmations: "users/confirmations" }

  devise_for :shelters, path: 'shelters', controllers: { sessions: "shelters/sessions",
                                                         unlock: "shelters/unlocks",
                                                         registrations: "shelters/registrations",
                                                         passwords: "shelters/passwords",
                                                         confirmations: "shelters/confirmations" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pets#index'
end
