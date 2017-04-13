class MarquesController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if new_marque.save
      redirect_to @new_marque, notice: 'La Marque a été ajoutée avec succès.'
    else
      render :new
    end
  end

  def update
    if marque.update(marque_params)
      redirect_to marque, notice: 'La Marque a été mise à jour avec succès.'
    else
      render :edit
    end
  end

  def destroy
    marque.destroy
    redirect_to marques_url, notice: 'La Marque a été supprimée avec succès.'
  end

  private

    def marque
      params[:id].present? ? @marque ||= Marque.find(params[:id]) : @marque ||= Marque.new
    end

    def marques
      @marques ||= Marque.all
    end

    def new_marque
      @new_marque ||= Marque.new(marque_params)
    end

    helper_method :marque, :marques, :new_marque

    def marque_params
      params.require(:marque).permit(:nom)
    end
end
