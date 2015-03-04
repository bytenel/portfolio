Portfolio::Application.routes.draw do
  match 'contact' => 'application#contact', :as => 'contact', :via => :post
  match 'resume' => 'application#resume', :as => 'resume', :via => :get

  root :to => 'application#index'
end
