Rails.application.routes.draw do
  resources :to_do_lists do
    member do
      post :sort
    end
  end
end
