# == Route Map
#
#          Prefix Verb   URI Pattern                Controller#Action
#     session_new GET    /session/new(.:format)     session#new
#  session_create GET    /session/create(.:format)  session#create
# session_destroy GET    /session/destroy(.:format) session#destroy
#     users_index GET    /users/index(.:format)     users#index
#       users_new GET    /users/new(.:format)       users#new
#      users_show GET    /users/show(.:format)      users#show
#      users_edit GET    /users/edit(.:format)      users#edit
#            root GET    /                          pages#index
#           users GET    /users(.:format)           users#index
#                 POST   /users(.:format)           users#create
#        new_user GET    /users/new(.:format)       users#new
#       edit_user GET    /users/:id/edit(.:format)  users#edit
#            user GET    /users/:id(.:format)       users#show
#                 PATCH  /users/:id(.:format)       users#update
#                 PUT    /users/:id(.:format)       users#update
#                 DELETE /users/:id(.:format)       users#destroy
#          boards GET    /boards(.:format)          boards#index
#                 POST   /boards(.:format)          boards#create
#       new_board GET    /boards/new(.:format)      boards#new
#      edit_board GET    /boards/:id/edit(.:format) boards#edit
#           board GET    /boards/:id(.:format)      boards#show
#                 PATCH  /boards/:id(.:format)      boards#update
#                 PUT    /boards/:id(.:format)      boards#update
#                 DELETE /boards/:id(.:format)      boards#destroy
#            pins GET    /pins(.:format)            pins#index
#                 POST   /pins(.:format)            pins#create
#         new_pin GET    /pins/new(.:format)        pins#new
#        edit_pin GET    /pins/:id/edit(.:format)   pins#edit
#             pin GET    /pins/:id(.:format)        pins#show
#                 PATCH  /pins/:id(.:format)        pins#update
#                 PUT    /pins/:id(.:format)        pins#update
#                 DELETE /pins/:id(.:format)        pins#destroy
#           login GET    /login(.:format)           session#new
#                 POST   /login(.:format)           session#create
#                 DELETE /login(.:format)           session#destroy

Rails.application.routes.draw do
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
  get 'users/index'
  get 'users/new'
  get 'users/show'
  get 'users/edit'
  root :to => 'pages#index'
  resources :users
  resources :boards
  resources :pins

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
