Rails.application.routes.draw do
  root to: 'surveys#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :surveys do
    resources :questions
  end

end
