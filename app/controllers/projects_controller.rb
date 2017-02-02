class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      if !@project.users.include?(current_user)
        @project.users << current_user
      end
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def index
    @projects = current_user.projects
  end

  def show
    @project = Project.find_by(id: params[:id])
  end

  def update
    @project = Project.find_by(id: params[:id])
    if @project.update(project_params)
      if !@project.users.include?(current_user)
        @project.users << current_user
      end
      redirect_to project_path(@project)
    else
      render 'edit'
    end
  end

  def edit
    @project = Project.find_by(id: params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description, :users_attributes => [:email])
  end
end
