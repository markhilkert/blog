Rails.application.routes.draw do
  devise_for :users
  
  namespace :api do
    get "/posts" => 'posts#index'
    get "/posts/:id" => 'posts#show'
    get '/posts/new' => 'posts#new'
    post "/posts" => 'posts#create'
    patch "/posts/:id" => 'posts#update'
    delete "/posts/:id" => 'posts#destroy'

    get "/tags" => 'tags#index'
    get "/tags/:id" => 'tags#show'
    get '/tags/new' => 'tags#new'
    post "/tags" => 'tags#create'
    patch "/tags/:id" => 'tags#update'
    delete "/tags/:id" => 'tags#destroy'

    get "/comments" => 'comments#index'
    get "/comments/:id" => 'comments#show'
    get '/comments/new' => 'comments#new'
    post "/comments" => 'comments#create'
    patch "/comments/:id" => 'comments#update'
    delete "/comments/:id" => 'comments#destroy'

    get "/posts_tags" => 'posts_tags#index'
    get "/posts_tags/:id" => 'posts_tags#show'
    get '/posts_tags/new' => 'posts_tags#new'
    post "/posts_tags" => 'posts_tags#create'
    patch "/posts_tags/:id" => 'posts_tags#update'
    delete "/posts_tags/:id" => 'posts_tags#destroy'
  end
end
