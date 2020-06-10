Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :articles
  
  root 'welcome#index'

  get '/api/get_user' => 'users#identify'
  get '/api/change_situation' => 'situation#changeSituation'
  get '/api/get_recipe' => 'recipe#recipeInfo'

  resources :articles do
    resources :comments
  end
end
