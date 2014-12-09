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
    		"Unknow :cmd !"
    	end
    end  

    def help
    end

    def open
    end

    def create
    	exec 'cd '+$rails_folder+';rails new '+@folder_name+';open -a '+$sublime_app+' '+$rails_folder+'/'+@folder_name
    end

    def composer
        exec 'php composer.phar'
    end

end