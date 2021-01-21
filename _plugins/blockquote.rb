# shorthand for a blockquotation
# {% blockquote <quote-key> %}

require 'nokogiri'

module Jekyll
  class BlockQuoteTag < Liquid::Tag

    @@TEMPLATE = IO.read("_includes/blockquote.html")

    def initialize(tag_name, text, tokens)
      super
      @quote_key = text.strip
    end

    def render(context)
      template = Nokogiri::HTML(@@TEMPLATE).at_css("blockquote")
      quote = context.registers[:site].data["quotes"][@quote_key]
      template.at_css(".quote").content = quote["quote"]
      template.at_css(".attribution").content = quote["attribution"]
      template.to_html
    end
  end
end

Liquid::Template.register_tag('blockquote', Jekyll::BlockQuoteTag)