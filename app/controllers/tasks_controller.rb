class TasksController < ApplicationController
 def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create

    task = @tasks.create(task_params)
    redirect_to task_path(task)
  end

  def edit
    @tasks = Task.find(params[:id])
  end

   def update
    @tasks = Task.find(params[:id])
    @tasks.update(task_params)
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :true)
  end

end




