module Jekyll
    module StripParagraphFilter
      def strip_paragraphs(input)
        input.gsub(/<\/?p>/, '')
      end
    end
  end
  
Liquid::Template.register_filter(Jekyll::StripParagraphFilter)
  