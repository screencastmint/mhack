require_relative 'config'
require_relative 'system/core'
require_relative 'system/dispatcher'

class Main
	def self.launch
		d = Dispatcher.new()
		d.dispatcher
	end	
end


