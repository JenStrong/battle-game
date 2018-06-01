def sign_in_and_play
  visit('/')
  fill_in :player_1, with: "Jen"
  fill_in :player_2, with: "Jon"
  click_button "Submit"
end
