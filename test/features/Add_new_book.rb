require "test_helper"


class AddNewBook < Capybara::Rails::TestCase

  setup do
    Author.create! first_name: "Akira", last_name: "Toriyama", bio: "Lives in Kiyosu, Japan."
  end

 test "Can Add New Book" do

  visit root_path

  click_link "New Book"
  within("#new_book") do
  fill_in "Title", with: "DR SLUMP"
  fill_in "Price", with: "$10"
  fill_in "Photo", with: "http://vignette1.wikia.nocookie.net/dragonball/images/6/6f/DrSlump.jpg/revision/latest?cb=20100121034119"
  select "Akira Toriyama", :from => "Author"
  click_button "Create Book"

  assert_content page, "DR SLUMP"
 end
 end
 end
