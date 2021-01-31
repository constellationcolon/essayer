# shorthand for a blockquotation
# {% blockquote <quote-key> %}

require 'nokogiri'

module Jekyll
  class BlockQuoteTag < Liquid::Tag

    @@TEMPLATE = \
    "<blockquote>" \
      "<div class='quote'><p>%{q}</p></div>" \
      "<cite class='attribution'>%{a}</cite>" \
    "</blockquote>"
    

    def initialize(tag_name, text, tokens)
      super
      @quote_key = text.strip
    end

    def render(context)
      quote = context.registers[:site].data["quotes"][@quote_key]
      @@TEMPLATE % { :q => quote["quote"], :a => quote["attribution"] }
    end
  end
end

Liquid::Template.register_tag('blockquote', Jekyll::BlockQuoteTag)