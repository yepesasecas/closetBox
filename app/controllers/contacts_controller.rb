class ContactsController < ActionController::Base

	def new
    contact = Contact.new name: params[:name], email: params[:email]
    if contact.save
      redirect_to root_path, notice: "Bienvenido a ClosetBox. proximamente nos pondremos en contacto."
    end
	end
end
