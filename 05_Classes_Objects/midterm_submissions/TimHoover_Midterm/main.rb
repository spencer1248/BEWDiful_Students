require_relative 'session'

class Main
  def initialize
    session = Session.new
    session.run
  end
end

Main.new