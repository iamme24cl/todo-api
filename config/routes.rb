Rails.application.routes.draw do
  namespace :api do 
    resources :todos
  end

  root 'api/todos#index'
end
