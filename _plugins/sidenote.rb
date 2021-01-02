module Jekyll
  class SidenoteTagBlock < Liquid::Block

    def initialize(tag_name, args, tokens)
      super
      @sidenote_id = args.strip
    end

    def render(context)
      text = super

      if context["note_number"].nil?
        context["note_number"] = 1
      else
        context["note_number"] += 1
      end
      @note_number = context["note_number"]
      @note_id = (@sidenote_id.nil? || @sidenote_id == "") ? ("note-" + @note_number.to_s) : @sidenote_id

      rendered = ""
      rendered << "<sup><label for='toggle-note-#{@note_number}' class='sidenote-number'></label></sup>"
      rendered << "<input id='toggle-note-#{@note_number}' class='sidenote-toggle' type='checkbox'>"
      rendered << "<span id='#{@note_id}' class='sidenote'>#{text}</span>"
      rendered
    end

  end
end

Liquid::Template.register_tag('sidenote', Jekyll::SidenoteTagBlock)
