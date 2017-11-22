class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if !sessions[:name].nil?
      redirect_to '/sessions/new'
    else
      redirect_to '/'
    end
  end

  def destroy
    if session[:name].nil?
      session[:name] == nil
    else
      session.delete :name
    end
  end
end
