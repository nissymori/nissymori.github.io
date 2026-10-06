# Inline text colored like links: {% blue %}text{% endblue %}

module Jekyll
  module Tags
    class BlueTag < Liquid::Block
      def render(context)
        site = context.registers[:site]
        converter = site.find_converter_instance(::Jekyll::Converters::Markdown)
        body = converter.convert(super(context).strip).gsub(/<\/?p[^>]*>/, '').chomp
        "<span class=\"blue\">#{body}</span>"
      end
    end
  end
end

Liquid::Template.register_tag('blue', Jekyll::Tags::BlueTag)
