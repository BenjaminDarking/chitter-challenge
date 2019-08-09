require 'pg'
require 'time'
require_relative 'database_connection'

class Peep

  attr_reader :time, :peep_user, :text

  def intialize(peep_user:, text:)
    @peep_user = peep_user
    @text = text
  end

  def self.all
    result = DatabaseConnection.query("SELECT peep_user, text, time FROM peeps;")
    result.map do |peep|
      Peep.new(username: peep['peep_user'], text: peep['text'], time: peep['time'])
    end
  end

  def self.create(text:)
    time_now = Time.now
    result = DatabaseConnection.query("INSERT INTO peeps (text, time_now) VALUES('#{text}', #{time_now}) RETURNING id, text, time;")
    Chitter.new(id: result[0]['id'], text: result[0]['text:'], time: result[0]['time'])
 end
end
