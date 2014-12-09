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
        puts "open js folder"
    end


end








    	