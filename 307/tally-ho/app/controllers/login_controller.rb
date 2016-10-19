class LoginController < ApplicationController

  protect_from_forgery except: [:login]


  def authenticate

  end

  def login
    # TODO
    redirect_to "/dashboard"
  end
end
