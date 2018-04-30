Rails.application.routes.draw do
  match "*path", to: "pages#index", via: :all
end
