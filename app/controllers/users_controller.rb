class UsersController < ApplicationController

  # Возвращает данные по пользователю
  def userdata
    @user = User.find_by username: params[:username]
    if @user == nil
      @user = User.new();
      @user.username = params[:username];
      @user.level = 1;
      @user.point = 0;
      @user.save();
    end
    respond_to do |format|
      format.xml {render xml: @user}
      format.json {render json: @user}
    end
  end

  # Устанавливаем данные
  def setdata
    @user = User.find_by username: params[:username]
    if @user != nil
      @user.level = params[:level];
      @user.point = params[:point];
      @user.save();
    end
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
