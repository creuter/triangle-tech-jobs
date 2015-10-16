class JobsController < ApplicationController
  def create
    @job = Job.new(params.require(:job).permit( :title, :company, :url, :description))
    if @job.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def show
  end
end
