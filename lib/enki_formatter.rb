class EnkiFormatter
  class << self
    def format_as_xhtml(text)
      Lesstile.format_as_xhtml(
        text,
        :text_formatter => lambda {|text| RDiscount.new(CGI::unescapeHTML(text),
                                                        :smart, 
                                                        :filter_html).to_html },
        :code_formatter => Lesstile::CodeRayFormatter
      )
    end
  end
end
