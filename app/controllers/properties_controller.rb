class PropertiesController < ApplicationController

  def homepage
  end

  def show
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
    redirect_to "/properties/confirm_property"
  end

  def confirm_property
    @address = params[:address]
    @city = session[:city]
    @state = session[:state]
    @zipcode = session[:zipcode]
    @type = session[:type]
    @year_built = session[:year_built]
    @no_bed = session[:no_bed]
    @no_bath = session[:no_bath]
    @garage = session[:garage]
    @parking = session[:parking]
    @description = session[:description]
    @price = session[:price]
    @status = session[:status]
    @contact_name = current_user.first_name + " " + current_user.last_name
    @contact_email = current_user.email
    @contact_phone = session[:contact_phone]
    # @state_taxes = helpers.state_taxes
    # puts "----------------------------------"
    # puts @state_taxes
    # puts "----------------------------------"
    # h = Hash.new {|hash, key| hash[key] = []}
    # @state_taxes.each {|e| h[e[0]] << e[1]}
    # @tax = h[@state]
    @longitude =
    @latitude =
    render "confirm_property"
  end

  def update_listing
  end

  def create
    @property = Property.new(address: @address,city: @city, state: @state, zipcode: @zipcode, type: @type, year_built: @year_built, no_bed: @no_bed, no_bath: @no_bath, garage: @garage, parking: @parking, description: @description, price: @price, status: @status, tax: @tax, contact_name: @contact_name, contact_email: @contact_email, contact_phone: @contact_phone)
    if @property.save
      puts "Property successfully posted!"
      redirect_to "/properties/homepage"
    else
      flash[:errors] = @property.errors.full_messages
      redirect_to "/properties/confirm_property"
    end
  end

  def search
  end

  def contact_seller
  end

  def edit
  end

  def update
  end

  def zestimate
  end

  # private
  #   def property_params
  #     params.require(:property).permit(:description, :type, :price, :city, :state, :zipcode, :address, :year_built, :status, :no_bed, :no_bath, :garage, :parking, :contact_phone)
  #   end
end
