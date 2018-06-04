class UpdatesController < ApplicationController
  before_action :set_beneficiary, only: [:create, :show, :edit, :update, :destroy]

  def index
    @updates = Update.all
  end

  def new
    @update = Update.new
  end

  def create
    @update = @beneficiary.updates.build(beneficiary_id: params[:beneficiary_id], notes: params[:update][:notes], user_id: session[:user_id])
    if @update.save
      redirect_to beneficiary_update_path(params[:beneficiary_id], @update), notice: 'Note was successfuly created.'
    else
      render :new
    end
  end

  private

  def set_beneficiary
    @beneficiary = Beneficiary.find(params[:beneficiary_id])
  end

  def update_params
    params.require(:update).permit(
      :user_id,
      :beneficiary_id,
      :notes
    )
  end

end
