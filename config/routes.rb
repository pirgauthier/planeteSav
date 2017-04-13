Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :marques, :type_appareils, :modeles, :etalons, :appareils, :clients, :contacts
end
