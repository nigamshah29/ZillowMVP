class PropertiesController < ApplicationController

  def homepage
  end

  def detail_page
    @p = Property.find(1)
    @prop_images=PropImage.where(property_id:params[:id])
  end

  def list_property
  end

  def hold_property_data
    session[:address] = params[:address]
    session[:city] = params[:city]
    session[:state] = params[:state]
    session[:zipcode] = params[:zipcode]
    session[:building_type] = params[:building_type]
    session[:year_built] = params[:year_built]
    session[:no_bed] = params[:no_bed]
    session[:no_bath] = params[:no_bath]
    session[:garage] = params[:garage]
    session[:parking] = params[:parking]
    session[:description] = params[:description]
    session[:price] = params[:price]
    session[:status] = params[:status]
    session[:contact_phone] = params[:contact_phone]
    # render json: params
    redirect_to "/properties/confirm_property"
  end

  def confirm_property
    @address = session[:address]
    @city = session[:city]
    @state = session[:state]
    @zipcode = session[:zipcode]
    @building_type = session[:building_type]
    year_built = session[:year_built].to_datetime
    @year_built = year_built.strftime('%B %d, %Y')
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
    state_taxes = helpers.state_taxes
    h = Hash.new {|hash, key| hash[key] = []}
    state_taxes.each {|e| h[e[0]] << e[1]}
    @tax = (h[@state][0] * 100).round(2) #as a percentage
    session[:tax] = @tax
    @property_tax = (h[@state][0] * @price.to_f).round(2)
    # @longitude =
    # @latitude =
    render "confirm_property"
  end

  def update_confirmed
  end

  def create
    @p = Property.new
    @p.address = session[:address]
    @p.city = session[:city]
    @p.state = session[:state]
    @p.zipcode = session[:zipcode]
    @p.building_type = session[:building_type]
    year_built = session[:year_built].to_datetime
    @p.year_built = year_built.strftime('%B %d, %Y')
    @p.no_bed = session[:no_bed]
    @p.no_bath = session[:no_bath]
    @p.garage = session[:garage]
    @p.parking = session[:parking]
    @p.description = session[:description]
    @p.price = session[:price]
    @p.status = session[:status]
    @p.contact_name = current_user.first_name + " " + current_user.last_name
    @p.contact_email = current_user.email
    @p.contact_phone = session[:contact_phone]
    @p.tax = session[:tax]
    if @p.save
      puts "***********************************"
      puts "Property successfully posted!"
      puts "***********************************"
      redirect_to "/properties/homepage"
    else
      flash[:errors] = @p.errors.full_messages
      redirect_to "/properties/confirm_property"
    end
  end

  def properties_list
    @new_properties = Property.order('created_at DESC')
  end

  def new_properties
    redirect_to '/properties'
  end

  # def popular_properties
  #   @popular_properties = Property.all  # TODO: order
  #   # @new_properties = Property.order('created_at DESC')
  #   redirect_to '/properties'
  # end
  #
  # def rent_properties
  #   @rent_properties = Property.all  # TODO: order
  #   # @rent_properties = Property.order('price DESC')
  #   redirect_to '/properties'
  # end

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
        :parking,
        :tax,
        :contact_name,
        :contact_email,
        :contact_phone
      )
    end
end
