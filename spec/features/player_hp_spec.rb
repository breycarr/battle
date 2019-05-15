feature "Hit Points" do
  scenario "player 2's hit points are shown" do
    sign_in_and_play
    expect(page).to have_text("Bob: 100HP")
  end
end
