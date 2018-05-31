feature 'Entering names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: "Jen"
    fill_in :player_2_name, with: "Jon"
    click_button "Submit"
    expect(page).to have_content "Jen vs. Jon"
  end
end
