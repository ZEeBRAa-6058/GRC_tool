Rails.application.routes.draw do
  resources :users
  root 'grc_tools#home'
  get 'grc_tools/home'
  get 'grc_tools/help'
  get 'grc_tools/about'
  resources :gacha_contents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
