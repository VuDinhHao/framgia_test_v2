Rails.application.routes.draw do

  devise_for :users
  resources :exams, only: [:index, :create]
  resources :users do
    resources :questions
  end
  resources :exams, only: [:index, :show, :create, :update]

  namespace :admin do
    resources :exams
    resources :home
  end


end
