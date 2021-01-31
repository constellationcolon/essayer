# auto-inserts bib into details
module Jekyll
  class DetailBibliography
    class << self
      def insert(doc)
        if doc.path.include? "_details/"
          doc.content << \
          "{% capture citations %}{% bibliography --cited %}{% endcapture %}" \
          "{% if citations.size > 39 %}" \
            "<h2>Bibliography</h2>" \
            "<div class='essai-bibliography'>{{ citations }}</div>" \
          "{% endif %}"
        end
      end
    end
  end
end

Jekyll::Hooks.register [:documents], :pre_render do |doc|
  Jekyll::DetailBibliography.insert(doc)
end