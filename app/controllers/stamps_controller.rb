class StampsController < ApplicationController
  def index
    @stamps = Stamp.find(:all)
  end

  def show
    @stamp = Stamp.find(params[:id])
  end
end
