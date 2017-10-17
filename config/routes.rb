Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  namespace :api do
    namespace :v1, defaults: {format: :json} do
      resources :schools, param: :uuid, only: [:index, :show]

      resources :employment_reports, only: [:index]
    end
  end
end
