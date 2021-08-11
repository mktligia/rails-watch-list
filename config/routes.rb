Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "lists#index" #cuando se ingresa a la URL principel, dibuje index del controller list index
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :movies, only: [:new, :create]
  end
end
