module Jekyll
  # Base class for the tag pages with all the shared behaviour
  class BaseDocTagPage < Page
    def initialize(site, base, dir)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      self.process @name
      self.read_yaml File.join(base, '_layouts'), layout_page
    end

    # Implement this function in child classes
    # Expected to return a string containing the filename of the layout in _layouts
    def layout_page
      raise
    end
  end

  # Represents a specific tag page
  class DocTagPage < BaseDocTagPage
    def initialize(site, base, dir, tag)
      super(site, base, dir)
      self.data['tag'] = tag
    end

    def layout_page
      'doc_tag_page.html'
    end
  end

  # Generate a page for every tag
  class DocTagPageGenerator < Generator
    safe true

    def generate(site)
      tagList = []

      if site.layouts.has_key? 'doc_tag_page'
        dir = site.config['doc_tag_page_dir'] || 'tag'

        # Build unique list of tags in all documentaries
        for page in site.documents
          if page["layout"] == 'documentary'
            for tag in page["tags"]
              cleanTag = tag.gsub ' ', ''
              if !tagList.include? cleanTag
                tagList << cleanTag
              end
            end
          end
        end
        
        tagList.each do |tag|
          write_tag_page(site, File.join(dir, tag), tag)
        end
      end
    end

    private

    def write_tag_page(site, dir, tag)
      page = DocTagPage.new(site, site.source, dir, tag)
      page.render(site.layouts, site.site_payload)
      page.write(site.dest)
      site.pages << page
    end
  end
end