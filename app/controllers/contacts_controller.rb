# frozen_string_literal: true

class ContactsController < ApplicationController
  before_action :set_contact, only: %i[show edit update destroy]
  
  def show; end

  def new
    @contact = Contact.new
  end

  def edit; end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver
      redirect_to @contact, notice: 'Contact was successfully created.'
    else
      render :new
    end
  end

  def update
    if @contact.update(contact_params)
      redirect_to @contact, notice: 'Contact was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @contact.destroy
    redirect_to contacts_url, notice: 'Contact was successfully destroyed.'
  end

  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
