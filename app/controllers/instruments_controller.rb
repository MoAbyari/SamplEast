class InstrumentsController < ApplicationController

def index
  @instruments = Instrument.all
end

def new
  @instrument = Instrument.new
end

def create
instrument = Instrument.create instrument_params
redirect_to instrument
end

def edit
  @instrument = Instrument.find params[:id]
end

def update
  instrument = Instrument.find params[:id]
  instrument.update instrument_params
  redirect_to instrument
end

def show
  @instrument= Instrument.find params[:id]
end

def destroy
  instrument = Instrument.find params[:id]
  instrument.destroy
  redirect_to instruments_path
end


private
def instrument_params
params.require(:instrument).permit(:name, :family, :geo, :image)
end

end
