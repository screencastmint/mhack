class Javascript

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
        if $param_one
            system 'open -a '+$sublime_app+' '+$js_folder+'/'+$param_one
        else
            system 'open -a '+$sublime_app+' '+$js_folder
        end 
    end


end








    	