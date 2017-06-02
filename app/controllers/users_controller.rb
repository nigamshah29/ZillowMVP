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
      session[:user_id] = user.id
      flash[:message] = ["user created"]
      redirect_to '/users/user_profile'
    else
      flash[:message] = user.errors.full_messages
      redirect_to '/users/welcome'
    end
  end

  def user_profile
    @fav_properties = Property.all # NOTE: Need to add query
    @listed_properties = Property.where(contact_email: current_user.email)
  end

  def my_listing
    @property = Property.find(params[:p_id])
  end

  def change_listing
    @p = Property.find(params[:p_id])
  end

  def update_listing
    @p = Property.find(params[:p_id])
    if @p.update(property_params)
      redirect_to "/users/#{@p.id}/my_listing"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to "/users/#{@p.id}/change_listing"
    end
  end

  def logout
    reset_session
    redirect_to "/users/welcome"
  end


  private
    def property_params
      params.require(:property).permit(
        :description,
        :building_type,
        :price,
        :city,
        :state,
        :address,
        :zipcode,
        :year_built,
        :status,
        :no_bed,
        :no_bath,
        :garage,
        :parking
      )
    end

end
