# renders the marginnote tag
# usage:
#   {% marginnote %}<text>{% endmarginnote %}

module Jekyll
  class MarginnoteTagBlock < Liquid::Block

    @@n = Hash.new { |h, k| h[k] = [] }

    def initialize(tag_name, args, tokens)
      super
      @marginnote_id = args.strip
    end

    def render(context)
      page_id = context.registers[:page].id
      if @@n.key?(context.registers[:page].id)
        @@n[page_id] += 1
      else
        @@n[page_id] = 0
      end
      if @marginnote_id == ""
        @marginnote_id = "marginnote-#{@@n[page_id].to_s}"
      end

      text = super
      rendered = ""
      rendered << "<label for='toggle-marginnote-#{@@n[page_id]}' class='marginnote-symbol'>✥</label>"
      rendered << "<input id='toggle-marginnote-#{@@n[page_id]}' class='marginnote-toggle' type='checkbox'>"
      rendered << "<span id='#{@marginnote_id}' class='marginnote'>#{text}</span>"
      rendered
    end

  end
end

Liquid::Template.register_tag('marginnote', Jekyll::MarginnoteTagBlock)
