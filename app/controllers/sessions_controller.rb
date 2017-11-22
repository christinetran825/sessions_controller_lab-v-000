class SessionsController < ApplicationController
  def new
  end

  def create
    session[:username] = params[:username]
    if !session
      redirect_to ''
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :username
  end
end
