class SamplesController < ApplicationController
  def index
  	@samples = Sample.all
  end

  def show
  	@sample = Sample.find(params[:id])
  end

  def new
  	@sample = Sample.new
  end

  def create
    sample = Sample.create(sample_params)
	redirect_to samples_path
  end

private

  def sample_params
    params.require(:sample).permit(:name)
  end

  def edit
  end
end
