require 'rails_helper.rb'

feature"User edits a county" do

    scenario "User succesfully navigates to the edit county page." do
        
        # Setup county to test on.
        visit new_county_path 
        expect(page).to have_content("New County")
        fill_in "Name", with: "Capybara County"
        click_button "Save County"
        expect(page).to have_content("Capybara County")
        
        # Actual test
        visit counties_path
        expect(page).to have_content("Capybara County")
        click_link "Edit Name"
        expect(page).to have_field("Name")
        expect(page).to have_content("Change County Name")
        
    end
    
    scenario "User succesfully edits a county." do
        
        # Setup county to test on.
        visit new_county_path 
        expect(page).to have_content("New County")
        fill_in "Name", with: "Capybara County"
        click_button "Save County"
        expect(page).to have_content("Capybara County")
        
        # Actual test
        visit counties_path
        expect(page).to have_content("Capybara County")
        click_link "Edit Name"
        expect(page).to have_field("Name")
        fill_in "Name", with: "Capyboro County"
        click_button "Save County"
        expect(page).to have_content("Capyboro County")

        
    end
end
