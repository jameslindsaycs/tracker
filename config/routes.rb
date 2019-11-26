Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  
  resources :users
  get 'faq/index'
  root to: 'welcome#index', as: 'welcome'
  resources :athletes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
