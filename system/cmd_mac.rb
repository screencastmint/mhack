class Mac

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
    	case $arg_one
    	when '@php'
    		exec 'open '+$php_folder
    	when '@rails'
    		exec 'open '+$rails_folder
    	when '@js' || '@javascript'
    		exec 'open '+$js_folder
    	else
    		exec 'open '+$sites_folder
    	end
    end


end