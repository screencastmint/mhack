require_relative 'lib/loader'

class Main
  def self.main
    Router.new.dispatcher
  end 
end

Main.main


