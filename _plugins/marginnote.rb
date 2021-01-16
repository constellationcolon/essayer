module Jekyll
  class MarginnoteTagBlock < Liquid::Block

    def initialize(tag_name, args, tokens)
      super

      @marginnote_id = args.strip
      if @marginnote_id == ""
        @marginnote_id = ("marginnote-" + @n.to_s)
      end

      @n = 0
    end

    def render(context)
      text = super
      rendered = ""
      rendered << "<label for='toggle-marginnote-#{@n}' class='marginnote-symbol'>✥</label>"
      rendered << "<input id='toggle-marginnote-#{@n}' class='marginnote-toggle' type='checkbox'>"
      rendered << "<span id='#{@marginnote_id}' class='marginnote'>#{text}</span>"
      @n += 1
      rendered
    end

  end
end

Liquid::Template.register_tag('marginnote', Jekyll::MarginnoteTagBlock)
