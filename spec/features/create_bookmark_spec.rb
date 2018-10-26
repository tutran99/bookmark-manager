# User visits the page, /bookmarks/new
# Types a URL into a form
# Form is submitted
# User sees the bookmark(s) submitted

feature 'submit and add a new bookmark' do
  scenario 'user adds a bookmark to bookmark manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'https://www.facebook.com')
    click_button('Submit')
    expect(page).to have_content 'https://www.facebook.com'
  end
end