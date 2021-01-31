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
      site.data["zettel"] = Hash.new { |h, k| h[k] = [] }
      site.data["see_alsos"] = Hash.new { |h, k| h[k] = [] }

      for post in site.posts.docs
        content = post.content.gsub(/[\n]/, " ")
        cited = (content.scan(/\{% ((side)?(margin)?cite(_details)?|reference) (\S+).*? %}/).map { |match| match[-1] }).uniq
        for cite_key in cited
          site.data["uncites"][cite_key].push(post)
        end
      end
      for doc in site.collections["zettel"].docs
        content = doc.content.gsub(/[\n]/, " ")
        cited = (content.scan(/\{% ((side)?(margin)?cite(_details)?|reference) (\S+).*? %}/).map { |match| match[-1] }).uniq
        for cite_key in cited
          site.data["zettel"][cite_key].push(doc)
        end
      end

      for stack in site.collections["stacks"].docs
        stack_key = stack.id.split("/").last
        stack_title = (entries.find { |e| e.key == stack_key }).title
        content = stack.content.gsub(/[\n]/, " ")
        see_alsos = (content.scan(/\{% ((side)?(margin)?cite(_stacks)?|reference) (\S+).*? %}/).map { |match| match[-1] }).uniq
        for see_also in see_alsos
          if see_also == stack_key
            next
          end
          sa = {"id" => stack_key, "title" => stack_title.to_s}
          site.data["see_alsos"][see_also].push(sa)
        end
      end

    end
  end
end