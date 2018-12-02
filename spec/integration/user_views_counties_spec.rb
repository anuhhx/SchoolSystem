require 'rails_helper.rb'

feature"User views all counties." do
    
    scenario "User succesfully navigates to the counties page" do
        visit root_path
        expect(page).to have_content("What is EDU CONNECT?")
        click_link "Counties"
        expect(page).to have_content("List of Counties")
    end
    
end
