class ContactsController < ActionController::Base

	def new
    @contact = Contact.new name: params[:name], email: params[:email]
    if @contact.save
      @message = "¡Bienvenido a ClosetBox! Te estaremos contactando en los proximos dias"
    else
      @message = "¡Tu email ya se encuentra registrado!"
    end
	end
end
