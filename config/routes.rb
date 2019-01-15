Rails.application.routes.draw do
root 'employees#index'
   resources :employees
   resources :departments
   resources :dependents
   resources :projects
   resources :dependents
   resources :dept_locations
   resources :works_ons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
