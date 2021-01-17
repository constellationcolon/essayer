# shorthand for styling a text snippet as smallcaps
# usage:
# {% sc <text> %}

module Jekyll
  class SmallCapsTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end

    def render(context)
      "<span class='small-caps'>#{@text}</span>"
    end
  end
end

Liquid::Template.register_tag('sc', Jekyll::SmallCapsTag)