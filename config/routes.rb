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
    resources :shops, only:[:index, :edit, :update, :destroy]
    resources :shop_posts, only:[:index, :destroy]
    resources :sakes, only:[:index, :edit, :update, :destroy]
    resources :sake_posts, only:[:index, :update, :destroy, :show, :edit]
    resources :customers, only:[:index, :show, :edit, :update]
  end
  
  scope module: :public do
    get "customers/check"
    patch "customers/out"
    resources :customers, only:[:show, :edit, :update] do
      get "sake_favorites/index"
    end
    get "search_sake" => "sakes#search"
    post "search_sake_prefectures" => "sakes#prefectures" #都道府県で絞り込み
    post "search_sake_rate" => "sakes#rate" #rateで絞り込み
    post "search_sake_select" => "sakes#sake_select"
    resources :sakes, only:[:index, :show]
    post "sakes/sake_posts" => "sake_posts#sakes"
    post "customer/sake_posts" => "sake_posts#customer"
    resources :sake_posts, only:[:index, :edit, :update, :destroy, :show, :new] do
      resources :sake_comments, only:[:create, :destroy]
      resource :sake_favorites, only:[:create, :destroy]
    end
    get "search_shop" => "shops#search"
    post "search_shop_prefectures" => "shops#prefectures"
    post "search_shop_rate" => "shops#rate"
    post "search_shop_select" => "shops#shop_select"
    resources :shops, only:[:index, :show] do
      resource :shop_favorites, only:[:create, :destroy]
    end
    get "shop_favorites/index"
    post "shop_posts/new"
    resources :shop_posts, only:[:update, :destroy, :create]
    get 'searches/search'
    get 'searches/form'
  end
  
  devise_scope :customer do
    post 'customers/guest_sign_in', to: 'public/sessions#guest_sign_in'
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
