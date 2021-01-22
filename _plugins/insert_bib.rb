# auto-inserts bib into details
module Jekyll
  class DetailBibliography
    class << self
      def insert(doc)
        if doc.path.include? "_details/"
          doc.content << "\n{% include bibliography.html %}"
        end
      end
    end
  end
end

Jekyll::Hooks.register [:documents], :pre_render do |doc|
  Jekyll::DetailBibliography.insert(doc)
end