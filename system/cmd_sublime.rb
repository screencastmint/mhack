class Sublime

	def initialize()   
    end  

    def cmd
    	case $cmd
    	when ":open"
    		open
    	else
    		"Unknow :cmd !"
    	end
    end  

    def open

    	if !$param_one
			exec 'open -a '+$sublime_app+' "`$pwd`"'
		else
			exec 'open -a '+$sublime_app+' '+$param_one
		end
    end
end