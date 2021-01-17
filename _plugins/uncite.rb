# generates list of places where key was cited for a detail page

module Jekyll
  class UnciteGenerator < Jekyll::Generator
    include Scholar::Utilities

    safe true
    priority :highest

    attr_reader :config

    def generate(site)
      @site = site
      @config = Scholar.defaults.merge(site.config['scholar'] || {})

      site.data["uncites"] = Hash.new { |h, k| h[k] = [] }
      site.data["see_alsos"] = Hash.new { |h, k| h[k] = [] }

      for post in site.posts.docs
        content = post.content.gsub(/[\n]/, " ")
        cited = content.scan(/\{% (cite(_details)?|reference) (\S+).*? %}/).uniq
        for cite_key in cited
          site.data["uncites"][cite_key[-1]].push(post.id)
        end
      end

      for detail in site.collections["details"].docs
        detail_key = detail.id.split("/").last
        detail_title = (entries.find { |e| e.key == detail_key }).title
        content = detail.content.gsub(/[\n]/, " ")
        see_alsos = content.scan(/\{% (cite(_details)?|reference) (\S+).*? %}/).uniq
        for see_also in see_alsos
          if see_also[-1] == detail_key
            next
          end
          sa = {"id" => detail_key, "title" => detail_title.to_s}
          site.data["see_alsos"][see_also[-1]].push(sa)
        end
      end

    end
  end
end