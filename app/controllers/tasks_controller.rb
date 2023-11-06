class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    def index
      @tasks = Task.all
    end
  
    def show
    end
  
    def new
      @task = Task.new
    end
  
    def edit
    end
  
    def create
      @task = Task.new(task_params)
      if @task.save
        redirect_to @task, notice: 'タスクの新規登録に成功しました'
      else
        render :new
      end
    end
  
    def update
      if @task.update(task_params)
        redirect_to @task, notice: 'タスクの更新に成功しました'
      else
        render :edit
      end
    end
  
    def destroy
      @task.destroy
      redirect_to tasks_path, notice: 'タスクが削除されました'
    end
  
    private
      def set_task
        @task = Task.find(params[:id])
      end
  
      def task_params
        params.require(:task).permit(:title, :description)
      end
end
