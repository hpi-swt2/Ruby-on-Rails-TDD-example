class ContactController < ApplicationController
  def index
  	@contact_list = Contact.all
  end
end
