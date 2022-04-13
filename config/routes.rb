Rails.application.routes.draw do
  devise_for :users
  # root to: 'articles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    authenticated :user do
      root "articles#index", as: :authenticated_root
    end
    unauthenticated do
      root "pages#home", as: :unauthenticated_root
    end
  end
end
