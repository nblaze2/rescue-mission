Rails.application.routes.draw do
  resources :questions do
    resources :answers
  end

  resources :answers, only: [:show, :update]
end
