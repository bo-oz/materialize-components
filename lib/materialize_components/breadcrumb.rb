require_relative 'base'

module MaterializeComponents

  class Breadcrumb < Base

    # Creates a new breadcrumb object

    def initialize
      @tag = :nav
      @class = Array.new
      @links = Array.new
    end

    # Adds a link to the breadcrumb
    # Examples
    #
    #   add_link("<a href='http://www.google.nl'>Google</a>")
    #
    # @param [Object] link Should be an +<a>+ element

    def add_link link
      @links << link
      return self
    end

    private

      def output
        content_tag(:div, print_links, {class: 'nav-wrapper'} )
      end

      def print_links
        content_tag(:div, @links.join.html_safe, {class: 's12 col'} )
      end

  end
end
