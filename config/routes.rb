Rails.application.routes.draw do
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions",
                                                   registrations: "users/registrations",
                                                   passwords: "users/passwords" }

  devise_for :shelters, path: 'shelters', controllers: { sessions: "shelters/sessions",
                                                         registrations: "shelters/registrations",
                                                         passwords: "shelters/passwords" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pets#index'
end
