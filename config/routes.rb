Rails.application.routes.draw do
  resources :tags, only: [:index, :show]
  resources :posts, only: [:index, :show]
  resources :authors, only: [:index, :show]
# get '/author/:id/short_content' to: 'author#short_content'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
