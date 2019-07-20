require './lib/database_connection'

if ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup('chitter_test')
else
  DatabaseConnection.setup('bookmark_manager')
end
