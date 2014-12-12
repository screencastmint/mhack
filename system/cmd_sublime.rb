class Sublime

    def cmd
    	case $cmd
        when ":help"
            help
    	when ":open"
    		open
    	else
    		"Unknow :action !"
    	end
    end  

    def help
        puts ""
        puts Rainbow(":open").color("#D65200")+"              Open with Sublime Text 2"
        puts ""
    end

    def open

    	if !$param_one
			exec 'open -a '+$sublime_app+' "`$pwd`"'
		else
			exec 'open -a '+$sublime_app+' '+$param_one
		end
    end
end