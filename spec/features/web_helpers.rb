def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Jen"
  fill_in :player_2_name, with: "Jon"
  click_button "Submit"
end
