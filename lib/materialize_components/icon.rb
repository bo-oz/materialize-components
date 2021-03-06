require_relative 'base'

module MaterializeComponents

  class Icon < Base

    # Creates a new instance of an Icon
    #
    # @param [String] icon The icon for the Icon Badge
    attr_writer :content


    def initialize icon
      @content = icon
      @tag = :i
      reset_class
    end

    def reset_class c=nil
      @css_class = ["material-icons","white-text"]
      @css_class << c unless c.nil?
      return self
    end

    def icon icon
      @content = icon
      return self
    end

    # Sets the size of the icon
    #
    # @return [self] Returns a reference to self

    ["tiny", "small", "medium", "large"].each do |method|
      define_method(method) do
        @css_class << method
        return self
      end
    end

  end

end
