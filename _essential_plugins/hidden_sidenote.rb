# renders the hidden_sidenote tag
# usage:
#   {% hidden_sidenote %}{label}<hidden_sidenote>{text}{% endhidden_sidenote %}

module Jekyll
  class HiddenSidenoteTagBlock < Liquid::Block

    @@n = Hash.new(0)

    def initialize(tag_name, argstr, tokens)
      super

      parser = OptionParser.new do |opts|

        opts.on("-i", "--id") do |id|
          @hidden_sidenote_id = id
        end

      end

      keys, arguments = parser.parse argstr.split(/\s+/).map(&:strip).reject(&:empty?)

    end

    def render(context)

      page_id = context.registers[:page].id
      @@n[page_id] += 1
      if @hidden_sidenote_id == "" || @hidden_sidenote_id.nil?
        @hidden_sidenote_id = "hidden-sidenote-#{@@n[page_id].to_s}"
      end

      label, text = super.split("<hidden_sidenote>")

      rendered = ""
      rendered << "<label for='toggle-hidden-sidenote-#{@@n[page_id]}' class='hidden-sidenote-label'>"
      rendered << "<input id='toggle-hidden-sidenote-#{@@n[page_id]}' class='hidden-sidenote-toggle' type='checkbox'>"
      rendered << "<span id='#{@hidden_sidenote_id}' class='hidden-sidenote'>#{text}</span>"
      rendered << label
      rendered << "</label>"

      rendered
    end

  end
end

Liquid::Template.register_tag(
  'hidden_sidenote', Jekyll::HiddenSidenoteTagBlock)
