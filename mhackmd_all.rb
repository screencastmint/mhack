module MhackmdAll
	class All

		def initialize
			@action = Mhack::Dispatcher.new.get_action
			@params = Mhack::Dispatcher.new.get_params
		end


	    def launcher

	    	case @action
	    	when ":help"
	    		help
	    	else
	    		puts ""
            	puts Rainbow("/!\\ Unknown :action").background("#EA1B00") 
            	puts ""
	    	end
	    end  


	    # > mhack @all :help
	    def help

	        puts ""
	        puts Rainbow("LIST OF STANDARD TECHNOLOGIES").underline    
	        puts ""
	        puts Rainbow("@mac").color("#58B555")+"                 Commands for manage your mac"
	        puts Rainbow("@finder").color("#58B555")+"              Commands for manage your finder"
	        puts Rainbow("@dock").color("#58B555")+"                Commands for manage your dock"
	        puts Rainbow("@gem").color("#58B555")+"                 Commands for manage gem"
	        puts Rainbow("@editor").color("#58B555")+"              Call your text editor defined into config.rb"
	        puts Rainbow("@web").color("#58B555")+"                 Commands for your web browser"
	        puts ""

	        # Add the list of using techno to remember
	    end

	end
end