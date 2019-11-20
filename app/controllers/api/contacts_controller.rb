class Api::ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render 'index.json.jb'
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
   
    @contact = Contact.new(
   
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      middle_name: params[:middle_name],
      lat: params[:lat],
      lng: params[:lng],
      user_id: current_user.id
    )


    if first_name == false || last_name == false
      @contact.save
   
    render 'show.json.jb'
    end


  end

  def update
    @contact = Contact.find_by(id: params[:id])
    
    @contact.update(
      first_name: params[:first_name] || @contact.first_name,
      middle_name: params[:middle_name] || @contact.middle_name,
      last_name: params[:last_name] || @contact.last_name,
      email: params[:email] || @contact.email,
      phone_number: params[:phone_number] || @contact.phone_number,
      lat: params[:lat] || @contact.lat,
      lng: params[:lng] || @contact.lng
    )
    render 'show.json.jb'
  end


  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render json: {message: "contact removed"}
  end

end

