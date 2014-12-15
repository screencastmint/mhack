

class Dispatcher


    def dispatcher

    	separator = $techno.split('-')
    	about = separator[0].downcase
        $version = separator[1]

    	case about
        when "@all"
            all = MhackmdAll::ALL.new()
            all.cmd
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
    		puts "Unknown @techno !"
    	end

    end

end