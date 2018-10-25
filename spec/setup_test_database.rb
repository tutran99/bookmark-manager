require 'pg'

p "Setting up database for test..."

def setup_test_database
  connection = PG.connect(dbname: 'bookmark_manager_test')

# This clears the bookmarks table
  connection.exec("TRUNCATE bookmarks;")
end