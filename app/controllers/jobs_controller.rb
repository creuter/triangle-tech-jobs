class JobsController < ApplicationController
  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def show
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update_attributes(job_params)
    redirect_to @job
  end

  def job_params
    params.require(:job).permit(
      :title,
      :company,
      :url,
      :description
    )
  end
end
