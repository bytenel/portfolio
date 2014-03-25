Portfolio::Application.routes.draw do
  match 'contact' => 'application#contact', :as => 'contact', :via => :post

  root :to => 'application#index'
end
