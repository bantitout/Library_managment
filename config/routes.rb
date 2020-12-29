Rails.application.routes.draw do
  devise_for :users
  resources :authors
  resources :libraries
  resources :books
  resources :students
  resources :book_ragisters 
  get 'student_path', to: 'students#show', as: 'student_path'

  root 'book_ragisters#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
