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

                    case about
                    when "@all"
                        t = MhackmdAll::All.new
                     when "@mac"
                        t = MhackmdMac::Mac.new
                    when "@gem"
                        t = MhackmdGem::Gem.new
                    when "@editor"
                        t = MhackmdEditor::Editor.new()
                    when "@rails"
                        t = MhackmdRails::Rails.new()
                    when "@web"
                        t = MhackmdWeb::Web.new()
                    else
                        puts ""
                        puts Rainbow("/!\\ Unknown @techno !").background("#EA1B00") 
                        puts ""
                    end    

                    if t
                        t.launcher     
                    end

                end

            else
                puts ""
                puts Rainbow("/!\\ You have to puts technologie prefixed by @").background("#EA1B00") 
                puts ""
            end 

        end


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