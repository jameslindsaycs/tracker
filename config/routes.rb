Rails.application.routes.draw do
  root to: 'welcome#index', as: 'welcome'
  resources :athletes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
