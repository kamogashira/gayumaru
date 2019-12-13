Rails.application.routes.draw do
  get 'company/index', to: 'company#index'
  get 'company/about', to: 'company#about'
  get 'company/flow', to: 'company#flow'
  get 'company/access', to: 'company#access'
  root 'company#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
