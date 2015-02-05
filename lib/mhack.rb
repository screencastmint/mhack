module Mhack
    class Dispatcher
        attr_reader :techno, :action, :params 
        def initialize
            @techno = ARGV[0]
            @action = ARGV[1]

            reader = ARGV.length
            @params = Array.new

            i = 2
            while i < reader  do
               @params.push ARGV[i]
               i += 1
            end
        end

        #Instantiates mhackmd designated by @something
        def pointer
            if @techno
                #Show @aliases defined into config or do some stuff about aliases
                if @techno == "@aliases"
                    if @action == ":show"
                        puts ""
                        puts $techno_aliases_list
                        puts ""
                    else
                        puts ""
                        puts Rainbow("/!\\ Unknow :action").background("#EA1B00") 
                        puts ""
                    end
                else
                    #Check if @techno is set
                    if @techno[0] != "@"
                        puts ""
                        puts Rainbow("/!\\ You have to puts technologie prefixed by @").background("#EA1B00") 
                        puts ""
                    else
                        param_count = @techno.length - 1
                        param_name = @techno[1,param_count]
                        get_techno = '$techno_'+param_name
                        launch_techno = eval(get_techno)

                        # Check aliases defined into config.rb
                        if launch_techno
                            techno = launch_techno.capitalize
                        else
                            techno = param_name.capitalize
                        end

                        #Launch Mhackmd
                        concat = 'Mhackmd'+techno+'::'+techno+'.new'
                        t = eval(concat)
                        t.launcher  
                    end 
                end
            else
                puts ""
                puts Rainbow("/!\\ You have to puts technologie prefixed by @").background("#EA1B00") 
                puts ""
            end 
        end
    end
end
