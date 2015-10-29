require 'rails_helper'

RSpec.describe Contact, type: :model do
  before(:each) do
    @contact = Contact.new(date_of_birth:Date.today)
  end

  context "writing to the database" do
    it "saves without errors" do
      # Tests whether other attributes not
      # declared in 'before' are required
      expect {@contact.save}.to change{Contact.count}.from(0).to(1)
    end
  end

end
