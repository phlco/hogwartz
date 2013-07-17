Hogwartz::Application.routes.draw do

  get "cat/sleep"

  root to: 'houses#index'

  get '/login' => 'session#new', as: 'login'
  post '/login' => 'session#create'

  get   '/:house/students'    => 'houses#show',     as: :house

  get   '/students'           => 'students#index'
  post  '/students'           => 'students#create'
  get   '/students/new'       => 'students#new',    as: :new_student
  get   '/students/:id/edit'  => 'students#edit',   as: :edit_student
  get   '/students/:id'       => 'students#show',   as: :student
  put   '/students/:id'       => 'students#update'

  post  '/spells'             => 'spells#create'
  get   '/spells/new'         => 'spells#new',      as: :new_spell
  get   '/spells/:id/edit'    => 'spells#edit',     as: :edit_spell
  get   '/spells/:id'         => 'spells#show',     as: :spell
  put   '/spells/:id'         => 'spells#update'

  get '/search'               => 'students#search', as: :search

end
