feature 'Confirm attack' do
  scenario 'player 1 gets confirmation that they attacked player 2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Jake attacked Gary!")
  end
end
