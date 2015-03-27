Rails.application.routes.draw do :products
  root :to => 'posts#index'
  resources :posts do
    resources :comments, except: [:show, :index]
  end

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
end
