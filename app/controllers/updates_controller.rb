class UpdatesController < ApplicationController
  before_action :require_logged_in

  def index
    if params[:beneficiary_id]
      @beneficiary = Beneficiary.find(params[:beneficiary_id])
      @updates = Beneficiary.find(params[:beneficiary_id]).updates
    else
      @updates = Update.all
    end
  end

  def new
    @update = Update.new
  end

  def create
    @update = Update.new(update_params)
    if @update.save
      redirect_to beneficiary_update_path(params[:update][:beneficiary_id], @update), notice: 'Note was successfuly created.'
    else
      render :new
    end
  end

  def show
    @update = Update.find(params[:id])
    @message = params[:message] if params[:message]
    @message ||= false
  end

  def edit
      @update = Update.find(params[:id])
  end

  def update
    @update = Update.find(params[:id])
    if @update.update(update_params)
      redirect_to update_path(@update), notice: 'Note was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_beneficiary
    @beneficiary = Beneficiary.find_by(id: params[:beneficiary_id])
  end

  def update_params
    params.require(:update).permit(
      :user_id,
      :beneficiary_id,
      :notes,
      :complete,
      :date
    )
  end

end
