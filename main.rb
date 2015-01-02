require_relative 'config'
require_relative 'mhack_modules'
require_relative 'mhackmd_all'
require_relative 'lib/dispatcher'
require 'rubygems'
require 'rainbow'
require 'fileutils'


class Main
	def self.main
		Mhack::Dispatcher.new.pointer
	end	
end

Main.main


