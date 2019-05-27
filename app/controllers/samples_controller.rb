class SamplesController < ApplicationController
  def index
  	@samples = Sample.all
  end

  def show
  	@sample = Sample.find(params[:id])
  end

  def new
  end

  def edit
  end
end
