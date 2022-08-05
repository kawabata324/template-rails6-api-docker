Rails.application.routes.draw do
  namespace :test do
    get 'tests/index'
    post 'tests', to: 'tests#create'
  end

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
