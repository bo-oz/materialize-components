module MaterializeComponents

  class InvalidInput < ArgumentError

    def initialize(e, method)
      case e
      when :hash
        message = "The attribute for method #{method} needs to be a Hash"
      else
        message = "Some of the attributed where not correct"
      end
      # Call the parent's constructor to set the message
      super(message)
    end

  end

end
