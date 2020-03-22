Rails.application.routes.draw do
  constraints subdomain: 'awesome-rails-api' do
    scope module: 'api' do
      namespace :v1 do
        resources :users, :titles
      end
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
