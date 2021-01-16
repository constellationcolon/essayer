require 'nokogiri'

module Jekyll
  class IDParagraphs
    class << self
      def tag(doc)
        parsed = Nokogiri::HTML(doc.output)
        parsed.css("p").each_with_index do |paragraph, i|
            paragraph["id"] = "paragraph-#{i}"
        end
        doc.output = parsed.to_html
      end
    end
  end
end

Jekyll::Hooks.register [:documents], :post_render do |doc|
  Jekyll::IDParagraphs.tag(doc)
end