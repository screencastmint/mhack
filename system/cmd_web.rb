require 'launchy'


class Web

    def cmd
    	case $cmd
    	when ":launch"
    		launch
        when ":help"
            help
    	else
    		"Unknow :action !"
    	end
    end 

    # > mhack @rails :help
    def help
    	puts ":launch         Launch website"
    end

    # > mhack @web :launch site
    def launch
    	Launchy.open( "http://www.#{$param_one}" )
    end 

end