# generate tags across the entire site

module Jekyll
  class TagsGenerator < Jekyll::Generator
    include Scholar::Utilities

    safe true
    priority :lowest

    attr_reader :config

    def generate(site)
      @site = site
      @config = Scholar.defaults.merge(site.config['scholar'] || {})

      for entry in entries
        entry[:tags].nil? ? next : nil
        tags = entry.tags.split(",").map { |t| t.strip() }
        stack = site.collections["stacks"].docs.find {
          |s| s.id.split("/")[-1] == entry.key }
        for tag in tags
          site.tags[tag] << stack
        end
      end

      for zettel in site.collections["zettel"].docs
        zettel.data["tags"].nil? ? next : nil
        zettel.data["tags"].map { |tag| site.tags[tag] << zettel }
      end

      all_tags_collection = site.collections["all_tags"]
      all_tags_dir = File.dirname(site.collections["stacks"].docs[0].path)\
                     .sub "stacks", "all_tags"
      all_tags_path_fmt = File.join(all_tags_dir, "%{tag}.md")

      default_data = site.frontmatter_defaults.all("", :all_tags)
      site.tags.each do |tag, documents|
        path = all_tags_path_fmt % { :tag => tag }
        tag_doc = Document.new(
          path, { :site => site, :collection => all_tags_collection }
        )
        tag_doc.data.merge!(default_data).merge!({ "title" => tag })
        all_tags_collection.docs << tag_doc
      end

    end
  end
end