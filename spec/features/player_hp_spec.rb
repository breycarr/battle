feature "Hit Points" do
  scenario "player 2's hit points are shown" do
    visit('/')
    fill_in('player1', with:'Alice')
    fill_in('player2', with:'Bob')
    click_button('Submit')

    expect(page).to have_text("Bob: 100HP")
  end
end
