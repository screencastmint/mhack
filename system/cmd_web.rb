require 'launchy'


class Web

    def cmd
    	case $cmd
    	when ":open"
    		open
        when ":help"
            help
    	else
    		"Unknow :action !"
    	end
    end 

    # > mhack @rails :help
    def help
    	puts ""
        puts Rainbow(":open").color("#D65200")+"              Open / launch website"
        puts ""
    end

    # > mhack @web :launch site
    def open
    	Launchy.open( "http://www.#{$param_one}" )
    end 

end