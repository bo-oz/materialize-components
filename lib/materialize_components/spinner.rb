require_relative 'base'

module MaterializeComponents

  class Spinner < Base

    # Creates a new instance of a Spinner
    #
    # @param [String] color The color to use for the spinner

    def initialize color ='blue'
      @tag = :div
      reset_class
      @color = color.in?(['red','blue','yellow','green']) ? color : 'blue'
    end

    def reset_class
      @css_class = ["preloader-wrapper active"]
    end

    # Sets the size of the spinner
    #
    # @return [self] Returns a reference to self

    ["small", "big"].each do |method|
      define_method(method) do
        @css_class << method
        return self
      end
    end

    # Sets the color of the spinner
    #
    # @return [self] Returns a reference to self

    ["red", "blue", "yellow", "green"].each do |method|
      define_method(method) do
        @color = method
        return self
      end
    end

    private

      def circle
        content_tag(:div, "", {class: 'circle'})
      end

      def spinner_content
        content_tag(:div, circle, {class:'circle-clipper left'}) +
        content_tag(:div, circle, {class:'gap-patch'}) +
        content_tag(:div, circle, {class:'circle-clipper right'})
      end

      def output
        content_tag(:div, spinner_content ,{class: "spinner-layer spinner-#{@color}-only"})
      end

  end

end
