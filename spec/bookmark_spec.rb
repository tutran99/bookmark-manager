require 'bookmark'
require 'database_helpers'

describe Bookmark do
  describe '#all' do
    it 'returns all bookmarks made' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.create(url: 'https://wwww.google.com', title: 'Google')
      Bookmark.create(url: 'https://github.com', title: 'GitHub')
      Bookmark.create(url: 'https://wwww.youtube.com', title: 'Youtube')      

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Google'
      expect(bookmarks.first.url).to eq 'https://wwww.google.com'
    end
  end

  describe '#create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'https:www.facebook.com', title: 'Facebook')
      persisted_data = persisted_data(id: bookmark.id)
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.url).to eq 'https:www.facebook.com'
      expect(bookmark.title).to eq 'Facebook'
    end
  end

  describe '#delete' do
    it 'removes a bookmark' do
      bookmark = Bookmark.create(title: 'Google', url: 'https://www.google.com')

      Bookmark.delete(id: bookmark.id)
      
      expect(Bookmark.all.length).to eq 0
    end
  end

  describe '#update' do
    it 'updates bookmark details' do
    bookmark = Bookmark.create(title: 'Google', url: 'https://www.google.com')

    changed_bookmark = Bookmark.update(id: bookmark.id, url: 'https://www.fakegoogle.com', title: 'FakeGoogle')

    expect(changed_bookmark).to be_a Bookmark
    expect(changed_bookmark.id).to eq bookmark.id
    expect(changed_bookmark.title).to eq 'FakeGoogle'
    expect(changed_bookmark.url).to eq 'https://www.fakegoogle.com'
    end
  end

  describe '#find' do
    it 'finds and returns the selected bookmark object' do
      bookmark = Bookmark.create(title: 'Google', url: 'https://www.google.com')

      selected_bookmark= Bookmark.find(id: bookmark.id)

      expect(selected_bookmark).to be_a Bookmark
      expect(selected_bookmark.id).to eq "#{bookmark.id}"
      expect(selected_bookmark.title).to eq 'Google'
      expect(selected_bookmark.url).to eq 'https://www.google.com'
    end
  end
end