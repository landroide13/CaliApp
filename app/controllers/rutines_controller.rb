class RutinesController < ApplicationController

  before_action :get_id, only: [:show, :update, :edit, :destroy]

  def index
    @rutines = Rutine.all
  end
  
  def new
    @rutine = Rutine.new
  end
  
  def create
    @rutine = Rutine.new get_params
    if @rutine.save
      redirect_to rutine_path(@rutine)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @rutine.update(get_params)
      flash[:success] = "Rutine sucessfully updated.."
      redirect_to rutine_path(@rutine)
    else
      flash[:danger] = "Upss, something went wrong.."
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @rutine.destroy
    flash[:success] = "Rutine Deleted..."
    redirect_to rutines_path
  end

  private

  def get_params
    params.require(:rutine).permit(:exercise, :sets, :reps)
  end

  def get_id
    @rutine = Rutine.find(params[:id])
  end

end
