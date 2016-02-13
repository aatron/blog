# encoding: UTF-8
module Octopress
  class Documentary < Page

    def set_default_options
      @options['type']      ||= 'documentary'
      @options['write_message'] ||= 'New documentary:'

      if @options['title'].nil? && @options[:type] == 'documentary'
        raise "Documentary not created: Please choose a title.\n".red + "  For example: " + "octopress new documentary \"Friendship with a tomato?\"".yellow
      end

      @options['layout']      = @config['documentary_layout']
      @options['date']        = convert_date @options['date']
      @options['extension'] ||= @config['documentary_ext']
      @options['template']  ||= @config['documentary_template']
      @options['dir']       ||= ''
    end

    def path
      name = if @options['path']
        "#{date_slug}-#{path_slug(@options['path'])}.#{File.extname(@options['path']).sub(/^\./, '')}"
      else
        "#{date_slug}-#{title_slug}.#{extension}"
      end
      File.join(site.source, '_drafts', name)
      name = "#{date_slug}-#{title_slug}.#{extension}"
      dir = File.join(site.source, '_documentaries', @options['dir'])
      FileUtils.mkdir_p dir
      File.join(dir, name)
    end

    def default_template
      'documentary'
    end
    
    def unpublish
      @options['date'] = read_documentary_yaml('date')
      @options['title'] = read_documentary_yaml('title')

      documentary_options = {
        'title'     => @options['title'],
        'date'      => @options['date'],
        'slug'      => path_slug(@options['path']),
        'extension' => File.extname(@options['path']).sub(/^\./, ''),
        'content'   => read_documentary_content,
        'dir'       => @options['dir'],
        'type'      => "draft from documentary",
        'write_message' => "Unpublished: #{relative_path(path)} →",
        'force'     => @options['force']
      }

      Draft.new(site, documentary_options).write
      
      # Remove the old documentary file
      #
      FileUtils.rm @options['path']
    end

    # Reads the file from options[path]
    #
    def read
      @documentary_content ||= begin
        file = @options['path']
        raise "File #{file} not found." if !File.exist? file
        File.read(file)
      end
    end

    # Get title from documentary file
    #
    def read_documentary_yaml(key)
      match = read.match(/#{key}:\s*(.+)?$/)
      match[1] if match
    end
    
    # Get content from draft documentary file
    # also update the draft's date configuration
    #
    def read_documentary_content
      if @options['date']
        # remove date if it exists
        content = read.sub(/date:.*$\n/, "")
        
        # Insert date after title
        content.sub(/(title:.+$)/i, '\1'+"\ndate: #{@options['date']}")
      else
        read
      end
    end
    
  end
end