class UpdatesController < ApplicationController
  def index
    @updates = Update.all
  end

  def new
    @beneficiary = Beneficiary.find(params[:beneficiary_id])
    @update = @beneficiary.updates.build(beneficiary_id: params[:beneficiary_id], user_id: session[:user_id])
  end


end
