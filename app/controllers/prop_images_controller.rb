class PropImagesController < ApplicationController

  before_action :set_prop_image, only: [:show, :edit, :update]

  def index
    @prop_images = PropImage.order('created_at DESC')
  end

  def new
    @prop_image=PropImage.new
  end

  def edit
  end

  def create
    @prop_image=PropImage.new(prop_image_params)
    @prop_image = Property.prop_image(1)
    if @prop_image.save
      redirect_to prop_images_path
    else
      @errors =  @prop_image.errors.full_messages
      render json: @errors
      # render :new
    end
  end

  def show
  end

  def update
    if @prop_image .update_attributes(prop_image_params)
      redirect_to prop_images_path(@prop_image)
    else
      render :edit
    end
  end

    private

    def prop_image_params
      params.require(:prop_image).permit(:title, :body, :image, :image_cache)
    end

    def set_prop_image
      @prop_image = PropImage.find(params[:id])
    end
  end
