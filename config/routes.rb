Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  # get = request to read
  # post = create new


  get 'tasks', to: 'tasks#index'
  post "tasks", to: "tasks#create"
  get "tasks/new", to: "tasks#new"
  get "tasks/:id", to: "tasks#show", as: :task # we need to put /:id as we're looking for the id from the task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  delete 'tasks/:id', to: 'tasks#destroy'
  #get "tasks/:id", to: "tasks#show", as: :task # we need to put /:id as we're looking for the id from the task
end
