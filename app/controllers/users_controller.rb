class UsersController < ApplicationController

  def index
    if current_user
      redirect_to '/properties/homepage'
    else
      redirect_to '/users/welcome'
    end
  end

  def welcome
  end

  def login
    user = User.find_by(email:params[:email])
    if user
      if user.authenticate params[:password]
        session[:first_name] = user.first_name
        session[:user_id] = user.id
        redirect_to '/users/user_profile'
      else
        flash[:message] = ["User password is incorrect"]
        redirect_to "/users/welcome"
      end
    else
      flash[:message] = ["User does not exist"]
      redirect_to "/users/welcome"
    end
  end

  def logout
  end

  def register
    user = User.create(first_name:params[:first_name], last_name:params[:last_name], email:params[:email], password:params[:password], password_confirmation:params[:password_confirmation])
    if user.valid?
      user.save
      session[:id] = user.id
      flash[:message] = ["user created"]
      redirect_to '/users/user_profile'
    else
      flash[:message] = user.errors.full_messages
      redirect_to '/users/welcome'
    end
  end

  def user_profile
  end

  def logout
    reset_session
    redirect_to "/users/welcome"
  end

end
