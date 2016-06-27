require 'Octopress'
load 'documentary.rb'

module Jekyll
#   module Commands
    
    class NewbCommand < Jekyll::Command
        include Octopress
        
        def self.init_with_program(prog)
          puts 'yo'
          
          prog.command(:newb) do |c|
            c.command(:docu) do |c|
              puts 'new documentary, yo!!'
            
              c.syntax 'post <TITLE> --dir [options]'
              c.description 'Add a new documentary to your Jekyll site.'
              CommandHelpers.add_page_options c
              c.option 'slug', '-s', '--slug SLUG', 'Use this slug in filename instead of sluggified post title.'
              c.option 'dir', '-D', '--dir DIR', 'Create post at _posts/DIR/.'
              CommandHelpers.add_common_options c

              c.action do |args, options|
                if args.empty?
                  c.logger.error "Please pass a title for your new post."
                  puts c
                else
                  options['title'] = args.join(" ")
                  options['dir'] = '../_documentaries'
                  Octopress::Documentary.new(Octopress.site(options), options).write
                end
              end
            end
            
            # puts 'test3'
        end
      end
    end
#   end

  
end