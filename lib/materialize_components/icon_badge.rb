require_relative 'base'

module MaterializeComponents

  class IconBadge < Base

    # Creates a new instance of an Icon Badge
    #
    # @param [String] icon The icon for the Icon Badge
    attr_reader :icon

    def initialize icon
      @icon = Icon.new(icon)
      @icon.add_class('white-text')
      @tag = :div
      reset_class
    end

    def reset_class
      @class = ['icon-badge-small']
    end

    # Sets the class of the icon
    #
    # @param [String] c The class to use for the icon
    # @return [self] Returns a reference to self

    def icon_class icon_class
      @icon.add_class(icon_class)
      return self
    end

    private
      def output
        @icon.to_s
      end

    class Large < IconBadge

      def initialize icon
        super
        @class = ['icon-badge']
      end
    end

  end

end
