feature 'get names' do
  scenario 'players enter two names' do
    visit('/')
    fill_in('player1', with:'Alice')
    fill_in('player2', with:'Bob')
    click_button('Submit')

    expect(page).to have_text('Alice vs. Bob')
  end
end
