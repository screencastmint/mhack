class Codeigniter

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
    	else
    		"Unknow :cmd !"
    	end
    end  

    # > mhack @codeigniter :help
    def help
    	puts ":open           Open codeigniter website"
    	puts ":new            Create new codeigniter application"
    end

    # > mhack @codeigniter :open site_name
    def open
    	system 'open -a '+$sublime_app+' '+$ci_folder+'/'+$arg_one
    end

    # > mhack @codeigniter :new site_name
    def create
    	
        folder_name = $arg_one.capitalize
        system 'mkdir '+$ci_folder+'/'+folder_name

        if $version
        	system 'cp -rf '+$mhack_ci+'/'+$version+'/ '+$ci_folder+'/'+folder_name
        else
        	system 'cp -rf '+$mhack_ci+'/stable/ '+$ci_folder+'/'+folder_name
        end

        system 'open -a '+$sublime_app+' '+$ci_folder+'/'+folder_name

    	
    end

end