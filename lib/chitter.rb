require 'pg'

class Chitter
  attr_reader :id, :username, :email, :name

  def intialize(id:, name:, username:, email:)
    @id = id
    @name = name
    @username = username
    @email = email
  end

  def self.register
    result = DatabaseConnection.query("INSERT INTO user (name, email, username, password) VALUES ('#{name}, #{email}, #{username}, #{password}') RETURNING name, email, username;")
    Chitter.new(id: result[0]['id'], name: result[0]['name'], username: result[0]['username'], email: result[0]['email'])
end

end

# def self.authenticate(username, password)
#   result = DatabaseConnection.query("SELECT * FROM user WHERE username = '#{username}'")
#
# end
