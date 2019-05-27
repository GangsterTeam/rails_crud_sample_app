class SamplesController < ApplicationController
  def index
  	@samples = Sample.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
