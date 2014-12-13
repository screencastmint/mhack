require_relative 'config'
require_relative 'system/core'
require_relative 'system/dispatcher'

class Main
	def main
		d = Dispatcher.new()
		d.dispatcher
	end	
end

m = Main.new()
m.main

