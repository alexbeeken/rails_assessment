Rails.application.routes.draw do :products
  root :to => 'posts#index'
  resources :posts do
    resources :comments, except: [:show, :index]
  end
end
