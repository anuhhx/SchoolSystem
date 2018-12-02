require 'rails_helper.rb'

feature"User adds a school" do

    scenario "User succesfully navigates to the new school page from a county's show page." do
        
        # Setup county to test on.
        visit new_county_path 
        expect(page).to have_content("New County")
        fill_in "Name", with: "Capybara County"
        click_button "Save County"
        expect(page).to have_content("Capybara County")
        
        # Actual test
        visit counties_path
        expect(page).to have_content("Capybara County")
        click_link "Schools"
        expect(page).to have_content("New School")
        click_link "New School"
        expect(page).to have_field("Address")

        
    end
    
    scenario "User succesfully adds a new school to a county." do
        
        # Setup county to test on.
        visit new_county_path 
        expect(page).to have_content("New County")
        fill_in "Name", with: "Capybara County"
        click_button "Save County"
        expect(page).to have_content("Capybara County")
        
        # Actual test
        visit counties_path
        expect(page).to have_content("Capybara County")
        click_link "Schools"
        expect(page).to have_content("New School")
        click_link "New School"
        expect(page).to have_field("Address")
        fill_in "Name", with: "Cap Y. Bara High"
        fill_in "Address", with: "123 Capybara ln. Gastonia, NC, 28054"
        fill_in "Phone", with: "123-456-7890"
        fill_in "Grade", with: "Highschool"
        fill_in "Website", with: "CYBHigh.edu"
        click_button "Create School"
        expect(page).to have_content("Cap Y. Bara High")


        
    end
    
end
