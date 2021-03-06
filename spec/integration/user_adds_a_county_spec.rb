require 'rails_helper.rb'

feature"User adds a county" do
    
    scenario "User succesfully navigates to the new county page from the home page" do
        visit root_path
        expect(page).to have_content("What is EDU CONNECT?")
        click_link "Counties"
        expect(page).to have_content("List of Counties")
        click_link "New County"
        expect(page).to have_field("Name")
    end
    
    scenario "User succesfully adds a new county" do
        visit new_county_path
        expect(page).to have_content("New County")
        fill_in "Name", with: "Capybara County"
        click_button "Save County"
        expect(page).to have_content("Capybara County")
    end
    
end

