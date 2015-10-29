require 'rails_helper'

RSpec.describe "contact/index.html.erb", type: :view do
  context "with 2 contacts" do
    before(:each) do
      @adam = Contact.create!(first_name: "Adam")
      @eve = Contact.create!(first_name: "Eve")
      # assign a variable in the view
      assign(:contact_list, [@adam, @eve])
      # renders the view, populates 'rendered'
      render
    end

    it "has a single top-level heading" do
      expect(rendered).to have_xpath("//h1", :count => 1)
    end

    it "shows the correct heading" do
      # match takes a regexp
      expect(rendered).to match /<h1>contact.*<\/h1>/i
    end

    it "does not render the 'empty' message" do
      expect(rendered).not_to match /no contacts/i
    end
    
    it "displays all first names of contacts" do
      expect(rendered).to include @adam.first_name
      expect(rendered).to include @eve.first_name
    end
  end
end
