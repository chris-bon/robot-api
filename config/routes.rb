Rails.application.routes.draw do
  root 'robots#index'

  namespace :api do
    namespace :v1 do
      get '/robots' => 'robots#index'
    end
  end
end
