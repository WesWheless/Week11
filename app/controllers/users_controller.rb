class UsersController < ApplicationController
  def new
  end

  def create
    c = User.new(:first_name => params[:first_name], :password => params[:password])
    c.save
    redirect_to root_url, notice: "Welcome aboard!"

  end

  def show
    @user = User.find_by(:id => params[:user_id])
    if @user.id != session[:user_id]
      redirect_to root_url, notice: "Nope.  Not flying today!"
    end
  end
end
