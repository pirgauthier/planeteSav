class ModelesController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if new_modele.save
      redirect_to @new_modele, notice: 'Le Modèle a été ajouté avec succès.'
    else
      render :new
    end
  end

  def update
    if modele.update(modele_params)
      redirect_to modele, notice: 'Le Modèle a été mis à jour avec succès.'
    else
      render :edit
    end
  end

  def destroy
    modele.destroy
    redirect_to modeles_url, notice: 'Le Modèle a été supprimé avec succès.'
  end

  private

    def modele
      params[:id].present? ? @modele ||= Modele.includes(:marque).find(params[:id]) : @modele ||= Modele.new
    end

    def modeles
      @modeles ||= Modele.all.includes(:marque)
    end

    def marques
      @marques ||= Marque.all.to_hash
    end

    def type_appareils
      @type_appareils ||= TypeAppareil.all.to_hash
    end

    def new_modele
      @new_modele ||= Modele.new(modele_params)
    end

    helper_method :modele, :modeles, :marques, :type_appareils, :new_modele

    def modele_params
      params.require(:modele).permit(:nom, :marque_id, :type_appareil_id)
    end
end
