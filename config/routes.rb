Cliff::Application.routes.draw do

	match '/auth/:provider/callback' => 'authentications#create'
  authenticated :user do
    root :to => 'home#index'
  end

  get "/home/my_list"
  get "/home/testone"
  get "/home/testtwo"
  get "/home/resultone"
  get "/home/resulttwo"
  get "/home/result"
  get "/home/report"
  post "/home/update_list1"
  post "/home/update_list2"

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => 'registrations'}
  resources :users, :only => :show
  resources :authentications

end
