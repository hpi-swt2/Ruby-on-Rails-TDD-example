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

  context "age calculation" do
    it "returns nil if date_of_birth is not set" do
      @contact.date_of_birth = nil
      expect(@contact.age).to eq(nil)
    end
    
    it "calculates the correct age for newborns" do
      expect(@contact.age).to eq(0)
    end

    it "updates correctly on date_of_birth changes" do
      expect { 
        @contact.date_of_birth = Date.today - 5.years 
      }.to change{@contact.age}.from(0).to(5)
    end

    it "calculates correctly in full years" do
      @contact.date_of_birth = Date.today - 1.year
      expect(@contact.age).to eq(1)
    end

    it "calculates correctly in between years" do
      @contact.date_of_birth = Date.today - 370.days
      expect(@contact.age).to eq(1)
      @contact.date_of_birth = Date.today - 350.days
      expect(@contact.age).to eq(0)
    end

    it "handles dates of birth in the future" do
      @contact.date_of_birth = Date.today + 1.year
      expect(@contact.age).to eq(0)
    end
  end
end
