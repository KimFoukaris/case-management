class BeneficiariesController < ApplicationController

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

  def user_params
    params.require(:beneficiary).permit(
      :name,
      :dob,
      :gender,
      :id_number,
    )
  end

end
