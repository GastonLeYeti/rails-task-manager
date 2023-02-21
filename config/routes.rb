Rails.application.routes.draw do
  root "tasks#index"
  # Read all
  get    "tasks", to: "tasks#index"
  # Create
  get    "tasks/new", o: "tasks#new",  as: :new_task
  post   "tasks", to: "tasks#create"
  # Show
  get    "tasks/:id", to: "tasks#show", as: :task
  # Update
  get    "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch  "tasks/:id", to: "tasks#update"
  # Delete
  delete "tasks/:id", to: "tasks#destroy"
  # Done
  post "tasks/:id/done", to: "tasks#done", as: :done_task


end
