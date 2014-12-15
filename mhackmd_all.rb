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
	        puts Rainbow("LIST OF TECHNOLOGIES").underline    
	        puts ""
	        puts Rainbow("@web").color("#58B555")+"                 Commands for your web browser"
	        puts ""
	    end

	end
end