Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'parts', to: 'parts#index'
  get 'default_parts', to: 'parts#default_index'

  get 'users/:name/part_sets', to: 'part_sets#index'

  namespace :api do
    namespace :v1 do
      post 'register_user_with_part_set', to: 'registration#register_user_with_part_set'
    end
  end

end
