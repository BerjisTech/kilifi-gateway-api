class StoreBranchesController < ApplicationController
  before_action :set_store_branch, only: %i[ show update destroy ]

  # GET /store_branches
  def index
    @store_branches = StoreBranch.all

    render json: @store_branches
  end

  # GET /store_branches/1
  def show
    render json: @store_branch
  end

  # POST /store_branches
  def create
    @store_branch = StoreBranch.new(store_branch_params)

    if @store_branch.save
      render json: @store_branch, status: :created, location: @store_branch
    else
      render json: @store_branch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /store_branches/1
  def update
    if @store_branch.update(store_branch_params)
      render json: @store_branch
    else
      render json: @store_branch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /store_branches/1
  def destroy
    @store_branch.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_branch
      @store_branch = StoreBranch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def store_branch_params
      params.require(:store_branch).permit(:store_id, :name, :coordinates, :location_name)
    end
end
