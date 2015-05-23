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
            if @techno && @techno == "@aliases"
                if @action == ":show"
                    render_message($techno_aliases_list)
                else
                    action_error
                end
            elsif @techno && @techno[0] == "@"
                param_count = @techno.length - 1
                param_name = @techno[1,param_count]
                get_techno = '$techno_'+param_name
                launch_techno = eval(get_techno)

                techno = launch_techno ? (launch_techno.capitalize) : (param_name.capitalize)

                instantiate = 'Mhackmd'+techno+'::'+techno+'.new'
                eval(instantiate).launcher
            else
                techno_error
            end
        end

        private
        def render_message(message)
            puts ""
            puts message
            puts ""
        end

        def techno_error
            render_message(Rainbow("/!\\ You have to puts technologie prefixed by @").background("#EA1B00"))
        end

        def action_error
            render_message(Rainbow("/!\\ Unknow :action").background("#EA1B00"))
        end
    end
end