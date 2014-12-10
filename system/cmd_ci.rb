class Codeigniter

    def cmd
    	case $cmd
    	when ":help"
    		help
    	when ":open"
    		open
    	when ":new"
    		create
    	else
    		"Unknow :action !"
    	end
    end  

    # > mhack @codeigniter :help
    def help
    	puts ":open           Open codeigniter website"
    	puts ":new            Create new codeigniter application"
    end

    # > mhack @codeigniter :open site_name
    def open
        if $param_one
            system 'open -a '+$sublime_app+' '+$ci_folder+'/'+$param_one
        else
            system 'open -a '+$sublime_app+' '+$ci_folder
        end
    	
    end

    # > mhack @codeigniter :new site_name
    def create
    	
        folder_name = $param_one.capitalize
        system 'mkdir '+$ci_folder+'/'+folder_name

        if $version
        	system 'cp -rf '+$mhack_ci+'/'+$version+'/ '+$ci_folder+'/'+folder_name
        else
        	system 'cp -rf '+$mhack_ci+'/stable/ '+$ci_folder+'/'+folder_name
        end

        system 'open -a '+$sublime_app+' '+$ci_folder+'/'+folder_name

    	
    end

end