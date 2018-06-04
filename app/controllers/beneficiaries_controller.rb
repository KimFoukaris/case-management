class BeneficiariesController < ApplicationController
  before_action :set_beneficiary, only: [:show, :edit, :update, :destroy]

  def index
    @beneficiaires = Beneficiary.all
  end

  def new
    @beneficiary = Beneficiary.new
  end

  def create
    @beneficiary = Beneficiary.new(beneficiary_params)
    if @beneficiary.save
      redirect_to beneficiary_path(@beneficiary), notice: 'Beneficiary was successfully created.'
    else
      render :new
    end
  end

  def show
    @message = params[:message] if params[:message]
    @message ||= false
  end

  private

  def set_beneficiary
    @beneficiary = Beneficiary.find(params[:id])
  end

  def beneficiary_params
    params.require(:beneficiary).permit(
      :name,
      :dob,
      :gender,
      :id_number,
    )
  end

end
