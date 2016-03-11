class LevelsController < ApplicationController

  #Возвращает данные по уровню
  def leveldata
    @level = Level.find_by level: params[:level]
    respond_to do |format|
      format.xml {render xml: @level}
      format.json {render json: @level}
    end
  end

end
