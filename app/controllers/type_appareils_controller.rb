class TypeAppareilsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if new_type_appareil.save
      redirect_to @new_type_appareil, notice: 'Le Type d\'Appareil a été ajouté avec succès.'
    else
      render :new
    end
  end

  def update
    if type_appareil.update(type_appareil_params)
      redirect_to type_appareil, notice: 'Le Type d\'Appareil a été mis à jour avec succès.'
    else
      render :edit
    end
  end

  def destroy
    type_appareil.destroy
    redirect_to type_appareils_url, notice: 'Le Type d\'Appareil a été supprimé avec succès.'
  end

  private

    def type_appareil
      params[:id].present? ? @type_appareil ||= TypeAppareil.find(params[:id]) : @type_appareil ||= TypeAppareil.new
    end

    def type_appareils
      @type_appareils ||= TypeAppareil.all
    end

    def new_type_appareil
      @new_type_appareil ||= TypeAppareil.new(type_appareil_params)
    end

    helper_method :type_appareil, :type_appareils, :new_type_appareil

    def type_appareil_params
      params.require(:type_appareil).permit(:nom, :marque_id)
    end

end
