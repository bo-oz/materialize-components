module MaterializeComponents

  class Badge < Base

    # Creates a new instance of a badge
    #
    # @param [String] content The content to put in a badge

    def initialize content
      @content = content
      @tag = :span
      @class = ['badge']
    end

    # Sets a caption for the badge
    #
    # @param [String] caption The caption you want to use
    # @return [self] Returns a reference to self

    def caption caption
      attr({'data-badge-caption': caption})
      return self
    end

    private

      def output
        @content
      end

    class New < Badge

      # Creates a "New" Badge
      #
      # @param [String] content The content to put in a badge

      def initialize content
        super
        @class << 'new'
      end
    end

  end

end
