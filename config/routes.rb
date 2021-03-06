Kriskringle::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"

  devise_for :users, :controllers => {
    :registrations => "users/registrations",
    :passwords => "users/passwords"
  }

  resources :users
  resources :kringles
end
