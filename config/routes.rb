Rails.application.routes.draw do
  root 'post_images#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :post_images, only: [:new, :create, :index, :show] do
    resource :favorites, only: [:create, :destroy]
#     今回、いいねの詳細ページは作成しません。
# favoritesのshowページが不要で、idの受け渡しも必要ないので、resourceとなっています。
    resources :post_comments, only: [:create, :destroy]
  end
end
