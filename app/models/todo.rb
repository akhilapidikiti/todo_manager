class Todo < ActiveRecord::Base
    def to_pleasant_string
        is_completed = completed ? "[x]" : "[ ]"
        "#{id}. #{due_date.to_s()} #{todo_text} #{is_completed}"
    end
end