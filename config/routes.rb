Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "tasks", to: "tasks#index"
  post "tasks", to: "tasks#create"
  get "tasks/new", to: "tasks#new"
  patch "tasks/:id", to: "tasks#update"
  get "task/:id/edit", to: "tasks#edit", as: :edit_task
  delete "tasks/:id", to: "tasks#destroy"
  delete "trash", to: "tasks#trash", as: :trash
  #  penser à mettre id à la fin pour eviter qu'il prenne le dessus sur tasks/new
  get "tasks/:id", to: "tasks#show", as: :task


  # Defines the root path route ("/")
  # root "posts#index"
end
