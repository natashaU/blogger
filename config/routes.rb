Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'


  resources :articles do
  	resources :comments
  end


  get '/articles' => 'articles#index'

  get 'articles/new' => 'articles#new'

 

  get 'articles/:id' => 'articles#show'

  #put 'articles/:id' => 'articles#update'

  delete 'articles/:id' => 'articles#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
