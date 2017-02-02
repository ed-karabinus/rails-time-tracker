class TimeblocksController < ApplicationController
  def new
    @timeblock = Timeblock.new(user_id: current_user.id, project_id: params[:project_id])
    @project = Project.find(params[:project_id])
  end

  def create
    @timeblock = Timeblock.new(timeblock_params)
    if @timeblock.save
      @timeblock.update(start: DateTime.now)
      redirect_to project_timeblock_path(project_id: params[:project_id], id: @timeblock.id)
    else
      render :new
    end
  end

  def end
    @timeblock = Timeblock.find(params[:id])
    @timeblock.update(end: DateTime.now)
    redirect_to project_timeblock_path(project_id: params[:project_id], id: @timeblock.id)
  end

  def show
    @timeblock = Timeblock.find(params[:id])
    @project = Project.find(params[:project_id])
  end

  def timeblock_params
    params.require(:timeblock).permit(:user_id, :project_id, :description)
  end
end