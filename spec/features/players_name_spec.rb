feature 'Names' do
  scenario 'players enter two names' do
    sign_in_and_play
    expect(page).to have_text('Alice vs. Bob')
  end
end
