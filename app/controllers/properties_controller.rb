class PropertiesController < ApplicationController

  def homepage
  end

  def list_property
  end

  def hold_property_data
    session[:address] = params[:address]
    session[:city] = params[:city]
    session[:state] = params[:state]
    session[:zipcode] = params[:zipcode]
    session[:type] = params[:type]
    session[:year_built] = params[:year_built]
    session[:no_bed] = params[:no_bed]
    session[:no_bath] = params[:no_bath]
    session[:garage] = params[:garage]
    session[:parking] = params[:parking]
    session[:description] = params[:description]
    session[:price] = params[:price]
    session[:status] = params[:status]
    session[:contact_phone] = params[:contact_phone]
    redirect_to "/confirm_property"
  end

  def confirm_property
    # @property = Property.new(property_params)
    @address = params[:address]
    @city = session[:city]
    @state = session[:state]
    @zipcode = session[:zipcode]
    @type = session[:type]
    @year_built= session[:year_built]
    @no_bed = session[:no_bed]
    @no_bath = session[:no_bath]
    @garage = session[:garage]
    @parking = session[:parking]
    @description = session[:description]
    @price = session[:price]
    @status = session[:status]
    # @contact_firstname = current_user.first_name
    # @contact_lastname = current_user.last_name
    # @contact_email = current_user.email
    @contact_phone = session[:contact_phone]
    @state_taxes = helpers.state_taxes
    puts "----------------------------------"
    puts @state_taxes
    puts "----------------------------------"
    h = Hash.new {|hash, key| hash[key] = []}
    @state_taxes.each {|e| h[e[0]] << e[1]}
    @tax = h[@state]
    render "confirm_property"
  end

  def update_listing
  end

  def post_property
    if @property.save
      puts "Property successfully posted!"
      redirect_to "/homepage"
    else
      flash[:errors] = @property.errors.full_messages
      redirect_to "/confirm_property"
    end
  end

  def search
  end

  def contact_seller
  end

  def edit_listing
  end

  def update_listing
  end

  def zestimate
  end

  # private
  #   def property_params
  #     params.require(:property).permit(:description, :type, :price, :city, :state, :zipcode, :address, :year_built, :status, :no_bed, :no_bath, :garage, :parking, :contact_phone)
  #   end
end
