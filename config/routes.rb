Portfolio::Application.routes.draw do
  mount Monologue::Engine, at: '/blog'

  match 'contact' => 'application#contact', :as => 'contact', :via => :post
  match 'resume' => 'application#resume', :as => 'resume', :via => :get

  root :to => 'application#index'
end
