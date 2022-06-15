class PrototypesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_prototype, only: [:edit, :show]
  
  def index
    @prototypes = prototype.all
  end

  def new
    @prototype = prototype.new
  end

  def create
    Prototype.create(prototype_params)
  end

  def destroy
    prototype = Prototype.find(params[:id])
    prototype.destroy
  end

  def edit
  end

  def update
    prototype = Prototype.find(params[:id])
    prototype.update(prototype_params)
  end

  def show
  end

  private
  def prototype_params
    params.require(:prototype).permit(:name, :image, :text)
  end

  def set_prototype
    @Prototype = Prototype.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end