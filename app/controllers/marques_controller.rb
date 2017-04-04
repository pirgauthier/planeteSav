class MarquesController < ApplicationController
  before_action :set_marque, only: %i(show edit update destroy)

  def index
    @marques = Marque.all
  end

  def show
    
  end

  def new
    @marque = Marque.new
  end

  def edit

  end

  def create
    @marque = Marque.new(marque_params)
    if @marque.save
      redirect_to @marque, notice: 'La Marque a été ajoutée avec succès.'
    else
      render :new
    end
  end

  def update
    if @marque.update(marque_params)
      redirect_to @marque, notice: 'La Marque a été mise à jour avec succès.'
    else
      render :edit
    end
  end

  def destroy
    @marque.destroy
    redirect_to marques_url, notice: 'La Marque a été supprimée avec succès.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marque
      @marque = Marque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marque_params
      params.require(:marque).permit(:nom)
    end

end
