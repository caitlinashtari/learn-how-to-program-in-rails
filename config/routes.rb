Rails.application.routes.draw do
  resources :weeks do
    resources :lessons
  end
end
