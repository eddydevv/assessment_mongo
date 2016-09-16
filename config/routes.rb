Rails.application.routes.draw do

  root  'home#index'
  get   'home'      =>  'home#index'
  get   'calendar'  =>  'home#calendar'
  get   'about'     =>  'home#about'
  get   'faqs'      =>  'home#calendar'
  get   'contact'   =>  'home#contact'
  get   'wiki'      =>  'home#wiki'

  resources :assessment_plans
  resources :scores
  resources :template_data
  resources :template_sublayouts
  resources :rubrics
  resources :assessment_units
  resources :assessment_subtypes
  resources :assessment_types
  resources :years
  resources :users
end
