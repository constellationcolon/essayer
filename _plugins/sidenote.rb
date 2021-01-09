module Jekyll
  class SidenoteTagBlock < Liquid::Block

    @@n = 0

    def initialize(tag_name, args, tokens)
      super

      @sidenote_id = args.strip
      if @sidenote_id == ""
        @sidenote_id = ("sidenote-" + @n.to_s)
      end

      @n = @@n
      @@n += 1

    end

    def render(context)
      text = super
      rendered = ""
      rendered << "<sup><label for='toggle-sidenote-#{@n}' class='sidenote-number'></label></sup>"
      rendered << "<input id='toggle-sidenote-#{@n}' class='sidenote-toggle' type='checkbox'>"
      rendered << "<span id='#{@sidenote_id}' class='sidenote'>#{text}</span>"
      rendered
    end

  end
end

Liquid::Template.register_tag('sidenote', Jekyll::SidenoteTagBlock)
