class Mhack
    attr_reader :techno, :action, :params, :helper 

    def initialize
        @techno = ARGV[0]
        @action = ARGV[1]
        reader = ARGV.length
        @params = Array.new
        @helper = Helper.new

        i = 2
        while i < reader  do
           @params.push ARGV[i]
           i += 1
        end
    end

    #Instantiates mhackmd designated by @something
    def router
        if @techno && @techno == "@aliases"
            if @action == ":show"
                @helper.render_message($techno_aliases_list)
            else
                @helper.render_action_error
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
            @helper.render_techno_error
        end
    end
end
