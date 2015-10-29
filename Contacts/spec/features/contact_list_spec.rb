feature "the contact list" do
  before(:each) do
    adam = Contact.create!(
      first_name: "Adam",
      last_name: "Surname",
      date_of_birth:Date.today - 25.years)
    eve = Contact.create!(
      first_name: "Eve",
      last_name: "AnotherSurname",
      date_of_birth:Date.today - 19.years)
    @contacts = [adam, eve]

    visit '/contact/index'
  end

  scenario "show the names and age of contacts" do
    # Only check that the text is present, the correctness of
    # age calculation is explicitly tested in the model test
    @contacts.each do |c|
      line = c.first_name + ' ' + c.last_name + ' | ' + c.age.to_s
      expect(page).to have_content line
    end
  end

  it "it shows the correct amount of list items" do
    expect(page).to have_css("li", :count => @contacts.size)
  end
end