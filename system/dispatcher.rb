
class Dispatcher

    def dispatcher
        
        if $techno
            separator = $techno.split('-')
            about = separator[0].downcase
            $version = separator[1]


            if about[0] != "@"
                puts ""
                puts Rainbow("/!\\ You have to puts technologie prefixed by @").background("#EA1B00") 
                puts ""
            else
                
                case about
                when "@all"
                    all = MhackmdAll::ALL.new()
                    all.cmd
                 when "@mac"
                    techno = MhackmdMac::MAC.new()
                    techno.cmd
                when "@gem"
                    techno = MhackmdGem::GEM.new()
                    techno.cmd
                when "@editor"
                    techno = MhackmdEditor::EDITOR.new()
                    techno.cmd
                when "@rails"
                    techno = MhackmdRails::RAILS.new()
                    techno.cmd
                when "@web"
                    techno = MhackmdWeb::WEB.new()
                    techno.cmd
                else
                    puts ""
                    puts Rainbow("/!\\ Unknown @techno !").background("#EA1B00") 
                    puts ""
                end    

            end            

        else
            puts ""
            puts Rainbow("/!\\ You have to puts technologie prefixed by @").background("#EA1B00") 
            puts ""
        end

    end

end