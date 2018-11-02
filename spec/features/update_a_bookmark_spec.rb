feature 'Update a bookmark' do
    scenario 'A user can update a bookmark' do
      bookmark = Bookmark.create(url: 'https://www.google.com', title: 'Google')
      visit('/bookmarks')
      expect(page).to have_link('Google', href: 'https://www.google.com')

      first('.bookmark').click_button 'Edit'
      expect(current_path).to eq "/bookmarks/#{bookmark.id}/edit"

      fill_in('url', with: 'https://www.fakegoogle.com')
      fill_in('title', with: 'FakeGoogle')
      click_button('Submit')

      expect(current_path).to eq '/bookmarks'
      expect(page).not_to have_link('Google', href: 'https://www.google.com')
      expect(page).to have_link('FakeGoogle', href: 'https://www.fakegoogle.com')
    end
end