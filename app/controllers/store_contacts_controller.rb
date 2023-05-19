# frozen_string_literal: true

class StoreContactsController < ApplicationController
  before_action :set_store_contact, only: %i[show update destroy]

  # GET /store_contacts
  def index
    @store_contacts = StoreContact.all

    render json: @store_contacts
  end

  # GET /store_contacts/1
  def show
    render json: @store_contact
  end

  # POST /store_contacts
  def create
    @store_contact = StoreContact.new(store_contact_params)

    if @store_contact.save
      render json: @store_contact, status: :created, location: @store_contact
    else
      render json: @store_contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /store_contacts/1
  def update
    if @store_contact.update(store_contact_params)
      render json: @store_contact
    else
      render json: @store_contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /store_contacts/1
  def destroy
    @store_contact.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_store_contact
    @store_contact = StoreContact.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def store_contact_params
    params.require(:store_contact).permit(:store_id, :contact_name, :contact_phone, :contact_email)
  end
end
