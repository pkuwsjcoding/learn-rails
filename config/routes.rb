Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    #root to: redirect('/about.html')
  #post "contact", to: 'contacts#process_form'
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  root to: 'visitors#new'
end 


