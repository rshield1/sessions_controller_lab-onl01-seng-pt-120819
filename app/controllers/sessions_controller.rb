class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to(controller: 'sessions',
    action: 'new') if params[:name] == nil || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    session.clear
    redirect_to controller: 'application', action: 'hello'
  end



end
