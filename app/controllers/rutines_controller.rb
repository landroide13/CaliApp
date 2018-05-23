class RutinesController < ApplicationController

  before_action :get_id, only: [:show]

  def index
    @rutines = Rutine.all
  end
  
  def new
    @rutine = Rutine.new
  end
  
  def create
    @rutine = Rutine.new get_params
    if @rutine.save
      redirect_to @rutine
    end
  end

  def show
  end

  private

  def get_params
    params.require(:rutine).permit(:exercise, :sets, :reps)
  end

  def get_id
    @rutine = Rutine.find(params[:id])
  end

end
