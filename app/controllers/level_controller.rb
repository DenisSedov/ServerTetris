class LevelController < ApplicationController

  #Возвращает данные по уровню
  def leveldata
    @level = Level.where("level ?", params[:level]).first
    respond_to do |format|
      format.xml {render xml: @level}
      format.json {render json: @level}
    end
  end

end
