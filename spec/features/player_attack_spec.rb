feature "player 1 can attack player 2" do
  scenario "player 1 initiates an attack" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_text('Alice attacked Bob!')
  end
end
