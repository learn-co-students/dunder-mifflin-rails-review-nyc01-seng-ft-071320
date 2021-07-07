Rails.application.routes.draw do
  resources :dogs
  resources :employees
  # patch '/employee/:id/edit', to: 'employee#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
