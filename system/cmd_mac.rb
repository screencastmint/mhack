class Mac


    def cmd
    	case $cmd
    	when ":open"
    		open
    	else
    		"Unknow :action !"
    	end
    end  

    def open
    	case $param_one
    	when '@php'
    		exec 'open '+$php_folder
    	when '@rails'
    		exec 'open '+$rails_folder
    	when '@js', '@javascript' 
    		exec 'open '+$js_folder
        when '@ci', '@codeigniter' 
            exec 'open '+$ci_folder
    	else
    		exec 'open '+$sites_folder
    	end
    end


end
