class LocalUsersController < ApplicationController
  before_action :set_variables

  def set_variables
    @style = "local"
    @logo = {
      :name => "LocalApp",
      :link => local_home_path
    }

    @nav_elements = [
      {
        :name => "Muro",
        :link => local_muro_path,
        :method => :get
      },
      {
        :name => "Mi Local",
        :link => local_mi_local_path,
        :method => :get
      },
      {
        :name => "Locales",
        :link => local_locales_path,
        :method => :get
      },
      {
        :name => "Salir",
        :link => destroy_local_user_session_path,
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
    @user = LocalUser.find(params[:id])
  end

  def update
    @user = LocalUser.find(params[:id])
    @user.update(params.require(:local_user).permit(:name))
    redirect_to local_home_path
  end

  def destroy
    @user = LocalUser.find(params[:id])
    @local = Local.find_by(local_user_id: @user.id)
    @local.destroy
    @user.destroy
    redirect_to root_path
  end
end
