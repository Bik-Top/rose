Rails.application.routes.draw do
  #get 'welcome/index'  # запросы к корню
  #root 'welcome#index' # в экшн index контроллера welcome
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :articles
  root 'welcome#index'
end
