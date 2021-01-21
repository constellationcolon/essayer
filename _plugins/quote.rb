# shorthand for a quotation
# {% quote <quote-key> %}

module Jekyll
  class QuoteTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @quote_key = text.strip
    end

    def render(context)
      quote = context.registers[:site].data["quotes"][@quote_key]
      "\"#{quote['quote']}\" — #{quote['attribution'] or "Anonymous"}"
    end
  end
end

Liquid::Template.register_tag('quote', Jekyll::QuoteTag)