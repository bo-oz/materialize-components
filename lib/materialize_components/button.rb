module MaterializeComponents

  class ButtonSkeleton < Base

    # Creates a new instance of a button skeleton, normally will not be used
    #
    # @param [String] content The text inside the button

    def initialize content
      @content = content
      @tag = :a
    end

    # make the button use the waves
    #
    # @return [self] Returns a reference to self

    def waves
      @class << 'waves-effect waves-light'
      return self
    end

    # disables the button
    #
    # @return [self] Returns a reference to self

    def disabled
      @class << 'disabled'
      return self
    end

    # makes it a large button
    #
    # @return [self] Returns a reference to self

    def large
      @class << 'btn-large'
      return self
    end

    # makes it a flat button
    #
    # @return [self] Returns a reference to self

    def flat
      @class << 'btn-flat'
      return self
    end

    # sets the link of the button
    #
    # @param [String] link The href where the button will link to
    # @return [self] Returns a reference to self

    def href link
      attr({href: link})
      return self
    end
  end

  class Button < ButtonSkeleton

    # Creates a new instance of a button
    #
    # @param [String] content The text inside the button

    def initialize content
      super
      @class = ['btn']
    end

    class Floating < ButtonSkeleton

      # Creates a new instance of a floating button
      #
      # @param [String] icon The icon to use inside the button

      def initialize icon
        super
        @icon = Icon.new(icon)
        @class = ['btn-floating btn-large']
      end

      private

        def output
          @icon.to_s
        end
    end

    class WithIcon < Button

      # Creates a new instance of a button with an icon
      #
      # @param [String] icon The icon to use inside the button

      def initialize icon
        super
        @orientation = :ltr
        @icon = Icon.new(icon)
      end

      # puts the icon on the right side
      #
      # @return [self] Returns a reference to self

      def icon_right
        @orientation = :rtl
        return self
      end

      # Sets the class of the icon
      #
      # @param [String] c The class to use for the icon
      # @return [self] Returns a reference to self

      def icon_class(c= "")
        @icon.add_class(c)
        return self
      end

      private

        def output
          (@orientation == :ltr) ? "#{@icon.to_s} #{@content}" : "#{@content} #{@icon.to_s}"
        end
    end

  end

end
