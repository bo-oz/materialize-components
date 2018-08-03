require_relative 'base'

module MaterializeComponents

  class FixedActionButton < Base

    attr_accessor :buttons

    # Creates a new instance of a FAB
    #
    # @param [String] icon The icon for the FAB

    def initialize icon
      @icon = Button::Floating.new(icon)
      @tag = :div
      reset_class
      @buttons = Array.new
    end

    def reset_class
      @class = ['fixed-action-btn']
    end

    # Adds a button to the menu, this needs to be an object that inherits
    # from +MaterializeComponents::ButtonSkeleton+
    #
    # @param [Object] b A button object to add to the list
    # @return [self] Returns a reference to self

    def add_button b
      return self unless b.is_a? MaterializeComponents::ButtonSkeleton
      @buttons << b
      @buttons.flatten!
      return self
    end

    # Adds click to toggle behavior to the FAB
    #
    # @return [self] Returns a reference to self

    def toggle
      @class << 'click-to-toggle'
      return self
    end

    # Makes the FAB a toolbar
    #
    # @return [self] Returns a reference to self

    def toolbar
      @class << 'toolbar'
      return self
    end

    private

      def print_buttons
        prt = @buttons.map { |b| content_tag(:li, b.to_s) }
        content_tag(:ul, prt.join.html_safe)
      end

      def output
        "#{@icon.to_s} #{print_buttons}"
      end
  end

end
