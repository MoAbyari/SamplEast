class CollectionsController < ApplicationController

  def index
    @samples = Sample.all
  end

  def new
    @sample = Sample.new
  end

  def create
  sample = Sample.create sample_params
  redirect_to collections_path
  end

  def edit
    @sample = Sample.find params[:id]
  end

  def update
    sample = Sample.find params[:id]
    sample.update sample_params
    redirect_to collections_path
  end

  def show
    @sample= Sample.find params[:id]
  end

  def destroy
    sample = Sample.find params[:id]
    sample.destroy
    redirect_to collections_path
  end


  private
  def sample_params
  params.require(:sample).permit(:name, :BPM, :musicalkey, :artist_id, :instrument_id)
  end

end
