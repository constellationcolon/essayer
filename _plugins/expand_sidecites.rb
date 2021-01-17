module Jekyll
  class ExpandSidecite
    class << self
      def expand(doc)
        doc.content = doc.content.gsub(
          /\{%\s+sidecite\s+([\s\S]+?)\s%}/,
          '{% sidenote %}{% cite \1 %}{% endsidenote %}'
        ).gsub(
          /\{%\s+margincite\s+([\s\S]+?)\s%}/,
          '{% marginnote %}{% cite \1 %}{% endmarginnote %}'
        )
      end
    end
  end
end

Jekyll::Hooks.register [:documents], :pre_render do |doc|
  Jekyll::ExpandSidecite.expand(doc)
end