def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'Jake')
  fill_in('player2', with: 'Gary')
  click_button('Submit')

end
