module MaterializeComponents

  class Base
    include ActionView::Helpers::TagHelper

    attr_accessor :css_class

    # Sets the style of an element
    #
    # @param [String] css_style The Style rule to add
    # @return [self] Returns a reference to self

    def style(css_style = '')
      @style = css_style
      return self
    end

    # Adds HTML Attributes
    #
    # @param [Hash] attributes A hash of HTML Attributes
    # @return [self] Returns a reference to self

    def attr(attributes = {})
      @attr = @attr || {}
      (attributes.is_a?(Hash)) ? @attr.merge!(attributes) : raise(InvalidInput.new(:hash, 'attr'))
      return self
    end

    # Sets the ID of the generated element
    #
    # @param [String] id The ID for the element
    # @return [self] Returns a reference to self

    def id(id)
      attr(id: id)
      return self
    end

    # Adds a class
    #
    # @param [String] c The class to add to the element
    # @return [self] Returns a reference to self

    def add_class(c = "")
      @css_class << c
      return self
    end

    def remove_class c
      @css_class.delete(c)
      return self
    end


    # Sets the content
    #
    # @param [String] content The content to be placed in the element
    # @return [self] Returns a reference to self

    def content(content = "")
      @content = content
      return self
    end

    # Prints the actual element
    #
    # @return [self] Returns the HTML for the element

    def to_s
      content_tag(@tag, output.html_safe, html_attributes)
    end

    def reset
      @style = ""
      @css_class = []
      self
    end

    private

      def html_attributes
        @attr = (!@attr.is_a?(Hash) ? {} : @attr)
        @attr.merge(style: @style, class: @css_class.delete_if(&:blank?).join(' ').strip)
      end

      def output
        @content.blank? ?  "" : @content.to_s
      end
  end
end
