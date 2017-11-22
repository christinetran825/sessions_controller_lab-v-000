class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if :name.nil?
      redirect_to ''
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :username
  end
end
