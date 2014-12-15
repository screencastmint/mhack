require_relative 'config'
require_relative 'mhack_modules'
require_relative 'system/core'
require_relative 'system/dispatcher'
require 'rubygems'
require 'rainbow'
require 'fileutils'


class Main
	def main
		d = Dispatcher.new()
		d.dispatcher
	end	
end

m = Main.new()
m.main

