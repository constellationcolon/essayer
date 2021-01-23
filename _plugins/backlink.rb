# generates backlinks

module Jekyll
  class BacklinkGenerator < Jekyll::Generator

    safe true
    priority :normal

    def rel(path)
        path[/.*?\/essayer\/(.*)/, 1]
    end

    def link_id_from_path(path)
      @doc_path_to_id[path]
    end

    def link_id_from_name(name_)
      @doc_name_to_id[name_]
    end

    def generate(site)
      site.data["backlinks"] = Hash.new { |h, k| h[k] = [] }

      @doc_path_to_id = {}
      @doc_name_to_id = {}
      for doc in site.documents
        rel_path = rel(doc.path)
        @doc_path_to_id[rel_path] = doc.id
        @doc_name_to_id[rel_path] = File.basename(doc.path, ".md")
      end

      for doc in site.documents
        content = doc.content
        collection = doc.type.to_s
        if collection == "details"
          target = site.pages.find { |page|
            doc.id.gsub(/^\/details\//, 'stacks/') + ".html" == page.path
          }
        else
          target = doc
        end
        content.scan(/\{%\s+link\s+(.*?)\s+%}/).uniq.each { |path|
          id = link_id_from_path(path[-1])
          id ? site.data["backlinks"][id].push(target) : nil
        }
        content.scan(/\{%\s+post_url\s+(.*?)\s+%}/).uniq.each { |name_|
          id = link_id_from_name(name_[-1])
          id ? site.data["backlinks"][id].push(target) : nil
        }
        content.scan(/href="\/essayer\/(.*?)"/).uniq.each { |path|
          id = link_id_from_path(path[-1])
          id ? site.data["backlinks"][id].push(target) : nil
        }
      end

    end
  end
end