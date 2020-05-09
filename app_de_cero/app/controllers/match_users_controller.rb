class MatchUsersController < ApplicationController
  before_action :set_variables

  def set_variables
    @style = "match"
    @logo = {
      :name => "MatchApp",
      :link => match_home_path
    }
    @nav_elements = [
      {
        :name => "Perfil",
        :link => match_perfil_path,
        :method => :get
      },
      {
        :name => "Match",
        :link => match_match_path,
        :method => :get
      },
      {
        :name => "Locales",
        :link => match_locales_path,
        :method => :get
      },
      {
        :name => "Inbox",
        :link => match_inbox_path,
        :method => :get
      },
      {
        :name => "Salir",
        :link => destroy_match_user_session_path,
        :method => :delete
      },
    ]
  end
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
    @user = MatchUser.find(params[:id])
  end

  def update
    @user = MatchUser.find(params[:id])
    @user.update(params.require(:match_user).permit(:name))
    redirect_to match_home_path
  end


  def destroy
    @user = MatchUser.find(params[:id])
    @user.destroy
    redirect_to root_path
  end
end
