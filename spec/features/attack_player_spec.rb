feature 'Attacking a player' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Jen attacked Jon"
  end

  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_button "Attack"
    click_link "ok"
    expect(page).not_to have_content "Jon: 60HP"
    expect(page).to have_content "Jon: 50HP"
  end
end
