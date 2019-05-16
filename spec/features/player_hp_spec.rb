feature "Hit Points" do
  scenario "player 2's hit points are shown" do
    sign_in_and_play
    expect(page).to have_text("Bob: 100HP")
  end

  scenario "an attack reduced player 2's hit points by 10" do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content("Bob now has 90HP")
  end
end
