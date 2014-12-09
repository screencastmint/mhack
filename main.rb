require_relative 'config'
require_relative 'system/dispatcher'


class Main

	def initialize()  		
    end

	def main
		d = Dispatcher.new()
		d.dispatcher
	end	
end


m = Main.new()
m.main

