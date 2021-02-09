# generate stacks documents for bib entries that don't appear as files

module Jekyll
  class StacksGenerator < Jekyll::Generator
    include Scholar::Utilities

    safe true
    priority :highest

    attr_reader :config

    def generate(site)
      @site = site
      @config = Scholar.defaults.merge(site.config['scholar'] || {})

      existing_entries = site.collections["stacks"].docs.map {
        |e| e.id.split("/")[-1]
      }

      path_fmt = File.join(
        File.dirname(site.collections["stacks"].docs[0].path),
        "%{key}.md"
      )

      default_data = site.frontmatter_defaults.all("", :stacks)
      for entry in entries
        if existing_entries.include? entry.key
          stack = site.collections["stacks"].docs.find {
            |s| s.id.split("/")[-1] == entry.key }
          stack.data.merge!({ "title" => entry.title.to_s })
          next
        end
        path = path_fmt % { :key => entry.key }
        relations = {:site => site, :collection => site.collections["stacks"]}
        stack = Document.new(path, relations)
        stack.content = ""
        stack.data.merge!(default_data).merge!({ "title" => entry.title.to_s })
        site.collections["stacks"].docs << stack
      end

    end
  end
end