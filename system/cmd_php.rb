class Php

    def cmd
    	case $cmd
        when ":help"
            help
        when ":open"
            open
    	when ":new"
    		create
        when ":composer"
            composer
    	else
    		"Unknow :action !"
    	end
    end  

    # > mhack @php :help
    def help
        puts ""
        puts Rainbow(":open").color("#D65200")+"               Open PHP website"
        puts Rainbow(":composer").color("#D65200")+"           Run composer"
        puts ""

    end

    def open
        if $param_one
            system 'open -a '+$sublime_app+' '+$php_folder+'/'+$param_one
        else
            system 'open -a '+$sublime_app+' '+$php_folder
        end 
    end

    def composer
        exec 'php composer.phar'
    end

end