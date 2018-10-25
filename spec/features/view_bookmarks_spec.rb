require 'spec_helper'
require 'pg'

feature 'View bookmarks' do
    scenario 'visit homepage and see bookmark manager' do
      visit ('/')
      expect(page).to have_content "Bookmark Manager"
    end
    scenario 'user can see list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      # Adding the test data
      connection.exec("INSERT INTO bookmarks VALUES(1, 'https://www.google.com');")
      connection.exec("INSERT INTO bookmarks VALUES(2, 'https://github.com');")
      connection.exec("INSERT INTO bookmarks VALUES(3, 'https://www.youtube.com');")

      visit ('/bookmarks')

        expect(page).to have_content "https://www.google.com"
        expect(page).to have_content "https://github.com"
        expect(page).to have_content "https://www.youtube.com"
    end
end