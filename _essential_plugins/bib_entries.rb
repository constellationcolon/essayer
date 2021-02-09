# adds bib entries to site data

module Jekyll
  class BibEntryGenerator < Jekyll::Generator
    include Scholar::Utilities

    safe true
    priority :highest

    attr_reader :config

    def generate(site)
      @site = site
      @config = Scholar.defaults.merge(site.config['scholar'] || {})

      site.data["bib"] = {}

      for entry in entries
        site.data["bib"][entry.key] = {
          "title"   => entry.title.to_s,
          "author"  => entry.author.to_s,
          "tags"    => (entry[:tags] or "").split(",").map { |t| t.strip() },
        }
      end

    end
  end
end