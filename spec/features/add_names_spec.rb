feature 'adding players names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content("Player 1: Jake")
    expect(page).to have_content("Player 2: Gary")
end
end
