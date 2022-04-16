Rails.application.routes.draw do
  get '/' => "attendance#index"
  get 'set' => "attendance#set"
  post 'create' =>"attendance#create"
  post 'subjects/:id/destroy' => "attendance#destroy"
  post 'attendance/:id/clear' => "attendance#clear"
  post 'attendance/:id/cancel' => "attendance#cancel"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
