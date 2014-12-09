class Rails

	def initialize()   
    end 

    def cmd
    	case $cmd
    	when ":open"
    		open
    	when ":new"
    		create
    	else
    		"Unknow :cmd !"
    	end
    end 

    # > mhack @rails :help
    def help
    	puts ":open           Open rails website"
    	puts ":new            Create new rails application"
    end

    # > mhack @rails :open site_name
    def open
    	system 'open -a '+$sublime_app+' '+$rails_folder+'/'+$arg_one
    end 

    def create
    	exec 'cd '+$rails_folder+';rails new '+@folder_name+';open -a '+$sublime_app+' '+$rails_folder+'/'+@folder_name
    end

end