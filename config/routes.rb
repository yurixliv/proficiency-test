Proficiency::Application.routes.draw do

  namespace :public, path:'/' do
    root to: 'cadastre#index'
    post '/', to: 'cadastre#create',   as: 'cadastre_create'
    get  '/classrooms', to: 'classrooms#index',  as: 'classrooms_index'
    post '/classrooms', to: 'classrooms#create', as: 'classrooms_create'
  end
end