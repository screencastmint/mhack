class Javascript

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
        puts Rainbow(":open").color("#D65200")+"           Open Javascript website"
        puts ""
    end  

    def open
        if $param_one
            system 'open -a '+$sublime_app+' '+$js_folder+'/'+$param_one
        else
            system 'open -a '+$sublime_app+' '+$js_folder
        end 
    end

end








    	