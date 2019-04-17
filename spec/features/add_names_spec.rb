feature 'adding players names' do
  scenario 'Can enter player 1s name and see on screen' do
    visit ('/')
    expect(page).to have_field("player1")
  end
end

feature 'adding players names' do
  scenario 'Can enter player 2s name and see on screen' do
    visit ('/')
    expect(page).to have_field("player2")
  end
end
