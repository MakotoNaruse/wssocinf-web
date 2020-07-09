Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :articles
  
  root 'welcome#index'

  get '/api/get_user' => 'users#identify'
  post '/api/change_situation' => 'users#change_situation'
  get '/api/change_situation' => 'users#change_situation'
  get '/api/get_recipe' => 'recipe#recipeInfo'

  get 'api/get_recipe' => 'recipes#get_recipe'

  resources :articles do
    resources :comments
  end
end
