class ContactController < ApplicationController
  def index
  	@count = Contact.count
  end
end
