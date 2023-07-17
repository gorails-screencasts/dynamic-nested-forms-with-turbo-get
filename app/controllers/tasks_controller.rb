class TasksController < ApplicationController
  def new
    render turbo_stream: turbo_stream.append(:tasks, partial: "tasks/task", locals: { task: Task.new })
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
  rescue ActiveRecord::RecordNotFound
    task = params[:id]
  ensure
    render turbo_stream: turbo_stream.remove(task)
  end
end
