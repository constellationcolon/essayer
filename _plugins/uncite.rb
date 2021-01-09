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

      for post in site.posts.docs
        content = post.content.gsub(/[\n]/, " ")
        cited = content.scan(/\{% cite (\S+).*? %}/).uniq
        for cite_key in cited
          site.data["uncites"][cite_key[0]].push(post.url)
        end
      end

    end
  end
end