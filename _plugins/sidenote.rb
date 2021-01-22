# renders the sidenote tag
# usage:
#   {% sidenote %}<text>{% endsidenote %}

module Jekyll
  class SidenoteTagBlock < Liquid::Block

    @@n = Hash.new { |h, k| h[k] = [] }

    def initialize(tag_name, args, tokens)
      super
      @sidenote_id = args.strip
    end

    def render(context)
      page_id = context.registers[:page].id
      if @@n.key?(context.registers[:page].id)
        @@n[page_id] += 1
      else
        @@n[page_id] = 0
      end
      if @sidenote_id == ""
        @sidenote_id = "sidenote-#{@@n[page_id].to_s}"
      end

      text = super
      rendered = ""
      rendered << "<sup><label for='toggle-sidenote-#{@@n[page_id]}' class='sidenote-number'></label></sup>"
      rendered << "<input id='toggle-sidenote-#{@@n[page_id]}' class='sidenote-toggle' type='checkbox'>"
      rendered << "<span id='#{@sidenote_id}' class='sidenote'>#{text}</span>"
      rendered
    end

  end
end

Liquid::Template.register_tag('sidenote', Jekyll::SidenoteTagBlock)
