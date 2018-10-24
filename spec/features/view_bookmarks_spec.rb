require 'spec_helper'

feature 'View bookmarks' do
    scenario 'visit homepage and see bookmark manager' do
      visit ('/')
      expect(page).to have_content "Bookmark Manager"
    end
    scenario 'user can see list of bookmarks' do
      visit ('/bookmarks')
        expect(page).to have_content "https://www.google.com"
        expect(page).to have_content "https://github.com"
        expect(page).to have_content "https://www.youtube.com"
    end
end