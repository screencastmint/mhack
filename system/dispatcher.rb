require_relative 'cmd_all'
require_relative 'cmd_ci'
require_relative 'cmd_mac'
require_relative 'cmd_php'
require_relative 'cmd_rails'
require_relative 'cmd_sublime'


class Dispatcher

	def initialize
		   
    end  

    def dispatcher

    	separator = $techno.split('-')
    	about = separator[0].downcase
        $version = separator[1]

    	case about
    	when "@all"
    		all = All.new()
    		all.cmd
    	when "@codeigniter"
    		techno = Codeigniter.new()
    		techno.cmd
    	when "@ci"
    		techno = Codeigniter.new()
    		techno.cmd
    	when "@php"
    		techno = Php.new()
    		techno.cmd
    	when "@rails"
    		techno = Rails.new()
    		techno.cmd
    	when "@ruby"
    		techno = Ruby.new()
    		techno.cmd
    	when "@javascript" 
    		techno = Javascript.new()
    		techno.cmd
    	when "@js"
    		techno = Javascript.new()
    		techno.cmd
    	when "@mac"
    		techno = Mac.new()
    		techno.cmd
    	when "@sublime"
    		app = Sublime.new()
    		app.cmd
    	else
    		puts "Unknown @technology !"
    	end

    end

end