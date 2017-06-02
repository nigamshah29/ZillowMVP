class PropImagesController < ApplicationController

  # before_action :set_prop_image, only: [:show, :edit, :update]

  def index
    @prop_images = PropImage.order('created_at DESC')
  end

  def new
    @p = Property.find(params[:p_id])
  end

  def edit
  end

  # def create
  #   @prop_image = PropImage.new(prop_image_params)
  #   if @prop_image.save
  #     redirect_to prop_images_path
  #   else
  #     @errors =  @prop_image.errors.full_messages
  #     render json: @errors
  #     # render :new
  #   end
  # end

  def create
    p_id = params[:p_id]
    print params[:image]
    puts params[:image]
    @image = PropImage.new(property_id: p_id, title: params[:title], image: params[:image], image_cache: params[:image_cache])
    if @image.save
      redirect_to "/properties/#{p_id}/detail_page"
    else
      flash[:messages] = @image.errors.full_messages
      return redirect_to "/prop_images/#{p_id}/new"
    end
    # redirect_to "/prop_images/#{p_id}/show"
    #
    # @prop_image = PropImage.new(prop_image_params)

    # respond_to do |format|
    #   if @pet.save
    #     format.html { redirect_to @pet, notice: 'Pet was successfully created.' }
    #     format.json { render :show, status: :created, location: @pet }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @pet.errors, status: :unprocessable_entity }
    #   end
    # end

  end


  def show
    @p = Property.find(params[:p_id])
    @prop_image = PropImage.last
    puts @prop_image.image
  end

  # def update
  #   if @prop_image.update_attributes(prop_image_params)
  #     redirect_to prop_images_path(@prop_image)
  #   else
  #     render :edit
  #   end
  # end

  private
    # def prop_image_params
    #   params.require(:prop_image).permit(:property_id, :title, :image)
    # end

    # def set_prop_image
    #   @prop_image = PropImage.find(params[:id])
    # end
end
