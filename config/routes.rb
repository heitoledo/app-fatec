AppFatec::Application.routes.draw do
 
  root :to => "students#index" 
  devise_for :users
  resources :students

end
