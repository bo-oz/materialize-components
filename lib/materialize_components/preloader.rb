require_relative 'base'

module MaterializeComponents

  class Preloader < Base

    # Creates a new instance of an Preloader
    #
    # @param [String] icon The icon for the Icon Badge

    def initialize
      @tag = :div
      reset_class
      @content = ""
    end

    def reset_class
      @css_class = ['progress']
    end

    # Creates a Determinate preloader
    #
    # @param [String] width The width to set on the preloader
    # @return [self] Returns a reference to self

    def determinate width
      @content = Determinate.new(width)
      return self
    end

    # Creates a Indeterminate preloader
    #
    # @return [self] Returns a reference to self

    def indeterminate
      @content = Indeterminate.new
      return self
    end

    class Determinate < Base

      # Creates a new instance of a Determinate

      def initialize width
        @tag = :div
        @css_class = ['determinate']
        @style = "width: #{width}%"
      end
    end

    class Indeterminate < Base

      # Creates a new instance of an Indeterminate

      def initialize
        @tag = :div
        @css_class = ['indeterminate']
      end
    end
  end

end
