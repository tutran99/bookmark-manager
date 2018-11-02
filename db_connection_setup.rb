require './lib/db_connection'

if ENV['ENVIRONMENT'] == 'test'
    DatabaseConnection.setup('bookmark_manager_test')
else
    DatabaseConnection.setup('bookmark_manager')
end