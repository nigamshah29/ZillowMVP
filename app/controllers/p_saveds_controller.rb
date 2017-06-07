class PSavedsController < ApplicationController

  def search
    @query = params[:query]
    if PSaved.create(query: params[:query], user_id: current_user.id)
      redirect_to '/properties'
    else
      flash[:errors] = @p.errors.full_messages
      redirect_to '/welcome'
    end
  end

  def saved_searches
    @saved_searches = PSaved.where(user_id: current_user.id).order('created_at DESC').group('query')
  end

  def favorite_property
  end

  def create
  end

  def destroy
  end

end
