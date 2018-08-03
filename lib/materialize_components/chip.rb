require_relative 'base'

module MaterializeComponents

  class Chip < Base

    # Creates a new instance of a chip
    #
    # @param [String] content The text inside the chip

    def initialize content
      @content = content
      @tag = :div
      reset_class
    end

    def reset_class
      @class = ['chip']
    end

    # makes it a closable chip
    #
    # @return [self] Returns a reference to self

    def closable
      @content << Icon.new('close').to_s
      return self
    end

    class WithIcon < Chip

      # Creates a new instance of a chip with an icon
      #
      # @param [String] icon The icon to use inside the chip
      attr_reader :icon_badge

      def initialize icon
        @icon_badge = IconBadge.new(icon)
        @orientation = :ltr
        super
        reset_class
      end

      def reset_class
        @class = Array.new
        return self
      end
      # overwrite the cloasable method so that it can't be used
      # for this type of element
      #
      # @return [self] Returns a reference to self

      def closable
        return self
      end

      # Sets the class of the badge
      #
      # @param [String] c The class to use for the badge
      # @return [self] Returns a reference to self

      def badge_class(c= "")
        @icon_badge.add_class(c)
        self
      end

      # Sets the class of the icon
      #
      # @param [String] c The class to use for the icon
      # @return [self] Returns a reference to self

      def icon_class(c= "")
        @icon_badge.icon.add_class(c)
        self
      end

      def icon icon
        @icon_badge.icon.content = icon
        self
      end

      # Puts the icon on the right hand side of the text
      #
      # @return [self] Returns a reference to self

      def icon_right
        @orientation = :rtl
        badge_class('rtl')
        return self
      end

      private

        def output
          (@orientation == :ltr) ? "#{@icon_badge.to_s} #{@content}" : "#{@content} #{@icon_badge.to_s}"
        end
    end

  end

end
