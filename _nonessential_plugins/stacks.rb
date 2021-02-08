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

      for entry in entries
        if existing_entries.include? entry.key
          next
        end
        path = path_fmt % { :key => entry.key }
        stack = Document.new(
          path, :site => site, :collection => site.collections["stacks"]
        )
        stack.content = ""
        stack.data["title"] = entry.title
        site.collections["stacks"].docs << stack
      end

    end
  end
end