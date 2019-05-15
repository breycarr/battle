feature 'get names' do
  scenario 'players enter two names' do
    visit('/')
    fill_in('first_name', with:'Alice')
    fill_in('second_name', with:'Bob')
    click_button('Submit')

    expect(page).to have_text('Alice vs. Bob')
  end
end
