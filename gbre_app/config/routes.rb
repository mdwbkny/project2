Rails.application.routes.draw do
  resources :agents
  resources :listings

  root 'listings#home'

  get 'listings' => 'listings#create'

  post 'listings' => 'listings#create'

  get 'listings/new' => 'listings#new'

  get 'listings/id/edit' => 'listings#edit'

  get 'listings/id' => 'listings#show'

  put 'listings/id' => 'listings#update'

  delete 'listings/id' => 'listings#destroy'

end

# Prefix Verb   URI Pattern                  Controller#Action
#       agents GET    /agents(.:format)            agents#index
#              POST   /agents(.:format)            agents#create
#    new_agent GET    /agents/new(.:format)        agents#new
#   edit_agent GET    /agents/:id/edit(.:format)   agents#edit
#        agent GET    /agents/:id(.:format)        agents#show
#              PATCH  /agents/:id(.:format)        agents#update
#              PUT    /agents/:id(.:format)        agents#update
#              DELETE /agents/:id(.:format)        agents#destroy
#     listings GET    /listings(.:format)          listings#index
#              POST   /listings(.:format)          listings#create
#  new_listing GET    /listings/new(.:format)      listings#new
# edit_listing GET    /listings/:id/edit(.:format) listings#edit
#      listing GET    /listings/:id(.:format)      listings#show
#              PATCH  /listings/:id(.:format)      listings#update
#              PUT    /listings/:id(.:format)      listings#update
#              DELETE /listings/:id(.:format)      listings#destroy