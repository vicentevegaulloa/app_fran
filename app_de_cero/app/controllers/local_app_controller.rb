class LocalAppController < ApplicationController
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

  def local_home
    if current_local_user
      @local_user = current_local_user
      if @local_user.local_id
        @local = Local.find(id=@local_user.local_id)
      end
    else
      redirect_to new_local_user_session_path, notice: 'You are not logged in.'
    end
  end

  def local_locales
    @locales = Local.all
  end

  def local_muro
    if current_local_user.local_id
      @comentarios = Comment.all
      @local_user = current_local_user
    end
  end

  def local_mi_local
    if current_local_user
      if current_local_user.local_id
        l_id = current_local_user.local_id
        @local = Local.find(id=l_id)
      end
      @local_user = current_local_user
    else
      redirect_to new_local_user_session_path, notice: 'You are not logged in.'
    end
  end

end
