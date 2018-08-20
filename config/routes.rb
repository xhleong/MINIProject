Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resources :companies, path: :company do
    member do
      devise_for :users, only: [:registrations], :controllers => { registrations: 'registrations' }, path_names: {sign_up: 'register'}
    end
  end

end
