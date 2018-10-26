require 'bookmark'

describe '#all' do
  it 'returns all bookmarks made' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'https://www.google.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'https://github.com');")        
    connection.exec("INSERT INTO bookmarks VALUES(3, 'https://www.youtube.com');")        

    bookmarks = Bookmark.all

    expect(bookmarks).to include('https://www.google.com')
    expect(bookmarks).to include('https://github.com')
    expect(bookmarks).to include('https://www.youtube.com')
  end
end

describe '#create' do
  it 'creates a new bookmark' do
    Bookmark.create(url: 'https:www.facebook.com')
    expect(Bookmark.all).to include('https:www.facebook.com')
  end
end


