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
  def edit
  	 @sample = Sample.find(params[:id])
  end
  def update
    @sample = Sample.find(params[:id])
    @sample.update(sample_params)

    redirect_to sample_path(@sample)
  end
  def destroy
    @sample = Sample.find(params[:id])
    @sample.destroy

    redirect_to samples_path
  end

  private

  def sample_params
    params.require(:sample).permit(:name)
  end
end
