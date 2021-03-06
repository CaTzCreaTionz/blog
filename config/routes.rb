Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }, controllers: { registrations: "user_registrations" }

  resources :articles do
    resources :comments
  end

resources :users

  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  root 'articles#index'
  post 'simple_pages/thank_you'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
