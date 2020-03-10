# todos_controller.rb
class TodosController < ApplicationController
    def index
      render plain: Todo.all.order(:due_date).map {|todo| todo.to_pleasant_string}.
      join("\n")
    end
    def show
        id = params[:id]
        todo=Todo.find(id)
        render plain: todo.to_pleasant_string
    end
    def create
      todo_text = params[:todo_text]
      due_date = DateTime.parse(params[:due_date])
      new_todo = Todo.create!(
         todo_text: todo_text,
         due_date: due_date,
         completed: false,
       )
      response_text = "hey your new todo is created" 
      render plain: "hey the params are #{params}"
    end
end
  