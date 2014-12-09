class Rails

	def initialize()   
    end 

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

    def help
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