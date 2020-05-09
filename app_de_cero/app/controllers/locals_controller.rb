class LocalsController < ApplicationController
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
    @local = Local.new
  end

  def create
    @local = Local.create(params.require(:local).permit(:name, :description))
    @local.update(local_user_id: current_local_user.id)
    current_local_user.update(local_id: @local.id)
    if @local.valid?
      redirect_to local_home_path
    else
      flash[:errors] = @local.errors.full_messages
      redirect_to new_local_path
    end
  end

  def show

  end

  def edit
    @local = Local.find(current_local_user.local_id)
  end

  def update
    @local = Local.update(params.require(:local).permit(:name, :description))
    redirect_to local_home_path
  end

  def destroy
    @local = Local.find(params[:id])
    @local.destroy
    @local_user = LocalUser.find_by(local_id: params[:id])
    @local_user.update(local_id: nil)
    redirect_to local_home_path
  end
end
