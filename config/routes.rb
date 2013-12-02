Sandprops::Application.routes.draw do
  devise_scope :user do
    get "/users/sign_up",  to: "pages#home"
    post "/users/sign_up", to: "pages#home"
  end
  devise_for :users

  get "home", to: redirect("/")

  root to: "pages#home"

  %w[home].each do |page|
    get page, controller: "pages", action: page
  end

  resources :owners
end
