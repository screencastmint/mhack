class All

	def initialize()   
    end 

    def cmd
    	case $cmd
    	when ":help"
    		help
    	else
    		"Unknow :cmd !"
    	end
    end  

    # > mhack @all :help
    def help
    	puts " "
    	puts "********** Rails **********"
    	puts " "
    	puts "@rails :open           Open rails website"
    	puts "@rails :new            Create new rails application"
		puts " "
		puts " "
    	puts "********** Codeigniter **********"
    	puts " "
    	puts "@codeigniter :open           Open codeigniter website"
    	puts "@codeigniter :new            Create new codeigniter application"
    	puts " "
    	puts " "
    end

end








    	