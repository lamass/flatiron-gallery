Rails.application.routes.draw do
  # resources :collaborations
  root "welcome#home"
  resources :users
  resources :cohorts do 
    resources :projects
  end

  get '/auth/google_oauth2/callback', to: "sessions#create"
  # auth/google_oauth2/callback
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
