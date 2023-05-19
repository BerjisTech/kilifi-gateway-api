# frozen_string_literal: true

class ProductBranchAvailabilitiesController < Api::V1::ApiController
  before_action :set_product_branch_availability, only: %i[show update destroy]

  # GET /product_branch_availabilities
  def index
    @product_branch_availabilities = ProductBranchAvailability.all

    render json: @product_branch_availabilities
  end

  # GET /product_branch_availabilities/1
  def show
    render json: @product_branch_availability
  end

  # POST /product_branch_availabilities
  def create
    @product_branch_availability = ProductBranchAvailability.new(product_branch_availability_params)

    if @product_branch_availability.save
      render json: @product_branch_availability, status: :created, location: @product_branch_availability
    else
      render json: @product_branch_availability.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_branch_availabilities/1
  def update
    if @product_branch_availability.update(product_branch_availability_params)
      render json: @product_branch_availability
    else
      render json: @product_branch_availability.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_branch_availabilities/1
  def destroy
    @product_branch_availability.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product_branch_availability
    @product_branch_availability = ProductBranchAvailability.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def product_branch_availability_params
    params.require(:product_branch_availability).permit(:product_id, :store_branch_id, :availability)
  end
end
