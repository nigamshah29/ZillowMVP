class AgentsController < ApplicationController
  def contact_agent
    @agents = Agent.all.order('created_at DESC')
  end

  def create
    Agent.create(name: params[:name], email: params[:email], phone: params[:phone])
    redirect_to "/agents/contact_agent"
  end

end
