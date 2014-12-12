class Rails

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

    # > mhack @rails :help
    def help
        puts ""
        puts Rainbow(":open").color("#D65200")+"              Open Ruby On Rails website"
        puts Rainbow(":new").color("#D65200")+"               Create new Rails app"
        puts ""
    end

    # > mhack @rails :open site_name
    def open
    	system 'open -a '+$sublime_app+' '+$rails_folder+'/'+$param_one
    end 

    # > mhack @rails :new site_name
    def create
    	exec 'cd '+$rails_folder+';rails new '+@folder_name+';open -a '+$sublime_app+' '+$rails_folder+'/'+@folder_name
    end

end