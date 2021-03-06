class PropertiesController < ApplicationController

  def homepage
    # @p = Property.find(1)
    # @latest = Property.last(4).order("id desc")
  end

  def detail_page
    # @p = Property.find(1)

    # @p = Property.find(1)
  end

  def detail_page
    @p = Property.find(params[:id])

    @prop_images=PropImage.where(property_id:params[:id])
  end

  def favorite
    @fav = Favorite.create(property_id:params[:id], user_id:current_user.id)
    redirect_to "/"
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
    @address = session[:address] + ", " + session[:city]
    @state = session[:state]
    @zipcode = session[:zipcode]
    @building_type = session[:building_type]
    year_built = session[:year_built].to_datetime
    @year_built = year_built.try(:strftime,'%B %d, %Y')
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
    render "confirm_property"
  end

  def update_confirmed
  end

  def create
    @p = Property.new
    @p.address = session[:address]
    @p.state = session[:state]
    @p.zipcode = session[:zipcode]
    @p.building_type = session[:building_type]
    year_built = session[:year_built].to_datetime
    @p.year_built = year_built.try(:strftime,'%B %d, %Y')
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
      redirect_to "/properties"
    else
      flash[:errors] = @p.errors.full_messages
      redirect_to "/properties/confirm_property"
    end
  end

  def index
    if params[:mapsearch].present?
      @listing = Geocoder.search(params[:mapsearch]).first
      PSaved.create(query: params[:mapsearch], user_id: current_user.id)
      @lat = @listing.data['geometry']['location']['lat']
      @lng = @listing.data['geometry']['location']['lng']
      @p = Property.near(params[:mapsearch], 20).group('address')
    else
      @lat = 41.901695
      @lng = -87.7094092
      @p = Property.all.group(:address).limit(5)
    end
  end

  def test
    session[:lat] = params[:latitude]
    session[:lng] = params[:longitude]
    puts session[:lat]
    puts session[:lng]
    @latlng = [session[:lat], session[:lng]]
    return render json: @latlng
  end

  def properties_json
    if params[:mapsearch].present?
      @p = Property.near(params[:mapsearch], 20)
    else
      @p = Property.all
    end
    render json: @p.to_json
  end

  def newest
    @p = Property.group(:address).order('created_at DESC').limit(5).all
  end

  def most_popular
    @p = Property.joins(:favorites).group(:property_id).select('properties.*, COUNT(*) AS favorite_count').order('favorite_count DESC').limit(5)
  end

  def low_to_high
    @p = Property.where(status:"For Rent").group(:address).order("price").limit(5)
  end

  # def search mapsearch
  #   @search = Geocoder.search(mapsearch).first
  #   if @search == nil
  #     @search = request.location
  #     @search = Geocoder.search(@search.ip).first
  #     @test = Geocoder.search('216.80.4.142').first
  #     @lat = @listing.data['lat']
  #     @lng = @listing.data['lng']
  #     @lat_test = @test.data['latitude']
  #     @lng_test = @test.data['longitude']
  #   end
  # end

  def contact_seller
  end

  def edit
  end

  def update
  end

  def zestimate
    @p = Property.find(params[:p_id])
  end

  def make_zestimate
    @p = Property.find(params[:p_id])
    @pres = params[:president]
    @zip_props = Property.where(zipcode: @p.zipcode)
    zip_prices = @zip_props.select("price")
    @average = zip_prices.sum("price") / zip_prices.size
    if @pres == "obama"
      @z = @average + (@average * 0.15)
    else
      @z = @average - (@average * 0.2)
    end
    render "make_zestimate"
  end

  # def properties_json
  #   @p = Property.all
  #   @arr = []
  #   @p.each do |p|
  #     @arr << p.address
  #   end
  #   render json: @p.to_json
  #
  #   # render json: @arr
  # end

  # def some_partial_thing
  #   render partial: 'my_partial'
  # end

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
    def prop_image_params
      params.require(:prop_image).permit(:property_id, :title, :image, :image_cache)
    end
end
