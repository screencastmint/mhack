class All

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
        puts Rainbow("@codeigniter").color("#58B555")+"         Commands for the PHP framework"
        puts Rainbow("@javascript").color("#58B555")+"          Commands for the Javascript language"
        puts Rainbow("@mac").color("#58B555")+"                 Commands for your mac"
        puts Rainbow("@php").color("#58B555")+"                 Commands for the PHP Language"
        puts Rainbow("@rails").color("#58B555")+"               Commands for the Ruby On Rails framework"
        puts Rainbow("@sublime").color("#58B555")+"             Commands for Sublime Text 2 editor"
        puts Rainbow("@web").color("#58B555")+"                 Commands for your web browser"
        puts ""
    end

end








    	