require 'spec_helper'
require 'pg'
require 'bookmark'

feature 'View bookmarks' do
    feature 'visit homepage and see bookmark manager' do
      scenario 'page title is visible' do
        visit ('/')
        expect(page).to have_content "Bookmark Manager"
      end
    end

    feature 'viewing bookmarks' do
      scenario 'user can see list of bookmarks' do
        connection = PG.connect(dbname: 'bookmark_manager_test')
        Bookmark.create(url: 'https://wwww.google.com', title: 'Google')
        Bookmark.create(url: 'https://github.com', title: 'GitHub')
        Bookmark.create(url: 'https://wwww.youtube.com', title: 'Youtube')

        visit ('/bookmarks')

        expect(page).to have_link('Google'), href: 'https://www.google.com'
        expect(page).to have_link('GitHub'), href: 'https://github.com'
        expect(page).to have_link('Youtube'), href: 'htttps://www.youtube.com'
      end
    end
end