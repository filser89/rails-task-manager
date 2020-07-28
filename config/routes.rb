Rails.application.routes.draw do
  # Create
  # Display form
  get "tasks/new", to: "tasks#new"

  # Create new task based on form input
  post "tasks", to: "tasks#create"

  # Read
  # All tasks
  get "tasks", to: "tasks#index"
  # One task
  get "tasks/:id", to: "tasks#show", as: "task"


  #Update

  get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "tasks/:id", to: "tasks#update"

  #delete

  delete "tasks/:id", to: "tasks#destroy"

  patch "tasks/:id/completed", to: "tasks#toggle_completed", as: "complete_task"
end
