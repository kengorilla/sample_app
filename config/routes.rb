Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'
  
  get 'static_pages/about'

  # For details on the DSL availlsable within this file, see http://guides.rubyonrails.org/routing.html
   root 'application#hello'
end
