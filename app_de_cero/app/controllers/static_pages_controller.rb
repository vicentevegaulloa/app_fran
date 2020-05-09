class StaticPagesController < ApplicationController
  def home
    @style = "home"
    @logo = {
      :name => "Grupo43App",
      :link => root_path
    }
    @nav_elements = [
      {
        :name => "Ver Locales",
        :link => "",
        :method => :get
      },
      {
        :name => "Entra Aqui",
        :link => login_path,
        :method => :get
      }
    ]
  end

  def login
    @style = "home"
    @logo = {
      :name => "Grupo43App",
      :link => root_path
    }
  end




end
