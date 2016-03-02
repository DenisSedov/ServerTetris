class UsersController < ApplicationController

  # Возвращает данные по пользователю
  def userdata
    @user = User.find_by username: params[:username]
    respond_to do |format|
      format.xml {render xml: @user}
      format.json {render json: @user}
    end
  end

  # Присваевает следующий уровень пользователю
  def nextlevel
    @user = User.where("username = ?", params[:username]).first
    User.level.+
    User.save
    respond_to do |format|
      format.xml {render xml: @user}
      format.json {render json: @user}
    end
  end

end
