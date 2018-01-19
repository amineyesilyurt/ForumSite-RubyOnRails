Rails.application.routes.draw do
  devise_for :users
   resources :posts do
    resources :comments
   
  end

   resources :ankets
   root 'posts#index' #posts controller index action

end
