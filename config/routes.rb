Rails.application.routes.draw do
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  root 'public/homes#top'

  namespace :admin do
    resources :comments, only:[:index, :destroy]
    resources :genres, only:[:index, :create, :edit, :update]
    post "genres/sake_create"
    post "genres/shop_create"
    resources :shops, only:[:index, :show, :update, :destroy]
    resources :shop_posts, only:[:index, :destroy]
    resources :sakes, only:[:index, :edit, :update, :destroy]
    resources :sake_posts, only:[:index, :update, :destroy, :show, :edit]
    resources :customers, only:[:index, :show, :edit, :update]
  end
  scope module: :public do
    get "customers/check"
    patch "customers/out"
    resources :customers, only:[:show, :edit, :update] do
      resource :sake_favorites, only:[:create, :destroy]
      resource :shop_favorites, only:[:create, :destroy]
      get "shop_favorites/index"
      resources :sake_comments, only:[:create, :destroy]
    end
    get "sake_favorites/index"
    resources :sakes, only:[:index, :show]
    resources :sake_posts, only:[:index, :edit, :update, :destroy, :show, :new]
    resources :shops, only:[:index, :show]
    post "shop_posts/new"
    resources :shop_posts, only:[:update, :destroy, :create]
    get 'searches/index'
    get 'searches/form'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
