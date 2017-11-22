class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:name].nil?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
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
