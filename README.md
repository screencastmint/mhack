Mhack
=====

Mhack is a small ruby script that includes a set of commands with the same logic "**Techno Action Params**"

#Logic

    > mhack @techno :action params_one ...

#Example  

    > mhack @codeigniter :new project_name  
    
----------
***Mhack is :***

 - Useful in case of memory hole 
 - Easy to use
 - Easy to understand
 - Easy to edit


***Mhack is not :***

 - A shortcut collection 
 - Exhaustive

----------


Requirements : You need Mac and Ruby 2.x

 1. Copy the folder where you want
 2. Run bundler from Mhack folder

	bundle install

 3. Add an alias into .bash_profile to this main.rb

    alias mhack='ruby /Path/To/Folder/Mhack/main.rb'

 4. Edit config.rb 
 5. Launch terminal and have fun !


 ----------

#Technologies

By default, Mhack included some technologies. You can easily add or create other technology with gem mhackmd_technologie.

***Technologies by default :***

 - **@all** => To see all technologies
 - **@gem** => Commands for manage gem
 - **@editor** => Use default text editor
 - **@rails** => Ruby On Rails commands
 - **@web** => Use default browser



To see all technologies :

    > mhack @all :help  

 ----------

#Actions


***Standard actions :***

 - **:help** => See the documentation of @techno
 - **:new** => Create project, file, document... with @techno 
 - **:open** => Open webpage, folder, file... with @techno
 

To see Actions of a specific technology :

    > mhack @techno :help  
