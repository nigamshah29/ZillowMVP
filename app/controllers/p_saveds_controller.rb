class PSavedsController < ApplicationController

  # def search
  #   @query = params[:mapsearch]
  #   @p = Property.near(params[:mapsearch], 10)
  #   @arr = []
  #   @p.each do |p|
  #     @arr << p.address
  #   end
  #   render json: @p.to_json
  # end

  def search
    @query = params[:mapsearch]
    if PSaved.create(query: @query, user_id: current_user.id)
      @p = Property.near(params[:mapsearch], 10)
      redirect_to '/properties'
    else
      flash[:errors] = @p.errors.full_messages
      redirect_to '/'
    end
  end
  

  def saved_searches
    @saved_searches = PSaved.where(user_id: current_user.id).order('created_at DESC').group('query')
  end


end
