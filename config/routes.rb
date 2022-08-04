Rails.application.routes.draw do
  namespace :test do
    get 'tests/index'
    post 'tests', to: 'tests#create'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
