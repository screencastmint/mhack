module MhackmdAll
	class ALL

	    def cmd
	    	case $cmd
	    	when ":help"
	    		help
	    	else
	    		"Unknow :action !"
	    	end
	    end  

	    # > mhack @all :help
	    def help

	        puts ""
	        puts Rainbow("LIST OF STANDARD TECHNOLOGIES").underline    
	        puts ""
	        puts Rainbow("@gem").color("#58B555")+"                 Commands for manage gem"
	        puts Rainbow("@editor").color("#58B555")+"              Call your text editor defined into config.rb"
	        puts Rainbow("@rails").color("#58B555")+"               Call rails commands"
	        puts Rainbow("@web").color("#58B555")+"                 Commands for your web browser"
	        puts ""

	        # Add the list of using techno to remember
	    end

	end
end