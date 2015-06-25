class Mhack
    attr_reader :techno, :action, :params, :helper

    def initialize
        @techno = ARGV[0]
        @action = ARGV[1]
        @params = Array.new
        @helper = Helper.new
        argv_size = ARGV.length

        2.upto(argv_size) { |i| @params.push ARGV[i] }
    end

    #Instantiates mhackmd designated by @something
    def router
        if @techno && @techno == "@aliases" && @action == ":show"
            @helper.render_message($techno_aliases_list)
        # @aliases alone render error
        elsif @techno && @techno == "@aliases"
            @helper.render_action_error
        # redirect to @something ...
        elsif @techno && @techno[0] == "@"
            param_count = @techno.length - 1
            param_name = @techno[1,param_count]
            launch_techno = "$techno_#{param_name}".constantize

            techno = launch_techno ? (launch_techno.capitalize) : (param_name.capitalize)
            "Mhackmd#{techno}::#{techno}".constantize.new.launcher
        else
            @helper.render_techno_error
        end
    end
end
