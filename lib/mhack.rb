module Mhack
    class Dispatcher

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
                separator = @techno.split('-')
                about = separator[0].downcase
                version = separator[1]


                if about[0] != "@"
                    puts ""
                    puts Rainbow("/!\\ You have to puts technologie prefixed by @").background("#EA1B00") 
                    puts ""
                else
                    param_count = about.length - 1
                    techno = about[1,param_count].capitalize
                    concat = 'Mhackmd'+techno+'::'+techno+'.new'
                    t = eval(concat)
                    t.launcher
                end

            else
                puts ""
                puts Rainbow("/!\\ You have to puts technologie prefixed by @").background("#EA1B00") 
                puts ""
            end 

        end

        # GETTERS
        def get_techno
            @techno
        end

        def get_action
            @action
        end

        def get_params
            @params
        end
    end
end