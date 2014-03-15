class SessionsController < ApplicationController
  def new
    params[:id]
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Safe travels!"
  end

  def create
    user = User.find_by(:first_name => params[:fname])
    if user.present?
      if user.password == params[:pwd]
        session[:user_id] = user.id
        redirect_to root_url, notice: "Yaaaassss, #{user.first_name}!  Clear for takeoff!"
      else
        redirect_to root_url, notice: "Looks like your password is on the wrong flight!"
      end
    else
      redirect_to root_url, notice: "Your passport isn't valid here."
    end
  end

end
