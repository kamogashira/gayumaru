Rails.application.routes.draw do
  get 'inquiry/index', to: 'inquiry#index'
  post 'inquiry/confirm', to: 'inquiry#confirm'
  post 'inquiry/thanks', to: 'inquiry#thanks'

  get 'company/index', to: 'company#index'
  get 'company/about', to: 'company#about'
  get 'company/flow', to: 'company#flow'
  get 'company/access', to: 'company#access'
  root 'company#index'

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
