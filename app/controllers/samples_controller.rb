class SamplesController < ApplicationController

  def index
    @samples = Sample.all
      if params.present?
        @samples = Sample.where(["name LIKE ?","%#{params[:search]}%"])
      else
        render samples_path
      end
  end

  def instrument
    @instruments = Instrument.all
  end

  def artist
    @artists = Artist.all
  end

  def instrumentsample
    @instrument = Instrument.find_by :name => params[:name]
    @instrument_id = @instrument.id
    @samples = Sample.all.where(instrument_id: @instrument_id)
  end

  def artistsample
     @artist = Artist.find_by :name => params[:name]
     @artist_id = @artist.id
     @samples = Sample.all.where(artist_id: @artist_id)

  end


  private
  def search_result
    params.require(:sample).permit(:name, :country, :musicalkey, :family, :search)
  end
end
