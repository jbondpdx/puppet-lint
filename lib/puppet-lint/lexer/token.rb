class PuppetLint
  class Lexer
    class Token
      # Internal: Returns the Symbol type of the Token.
      attr_reader :type

      # Internal: Returns the String value of the Token.
      attr_reader :value

      # Internal: Returns the Integer line number of the manifest text where
      # the Token can be found.
      attr_reader :line

      # Internal: Returns the Integer column number of the line of the manifest
      # text where the Token can be found.
      attr_reader :column

      attr_accessor :next

      attr_accessor :prev

      attr_accessor :next_nf

      attr_accessor :prev_nf

      # Internal: Initialise a new Token object.
      #
      # type   - An upper case Symbol describing the type of Token.
      # value  - The String value of the Token.
      # line   - The Integer line number where the Token can be found in the
      #          manifest.
      # column - The Integer number of characters from the start of the line to
      #          the start of the Token.
      #
      # Returns the instantiated Token.
      def initialize(type, value, line, column)
        @value = value
        @type = type
        @line = line
        @column = column
        @next = nil
        @prev = nil
        @next_nf = nil
        @prev_nf = nil
      end

      # Internal: Produce a human friendly description of the Token when
      # inspected.
      #
      # Returns a String describing the Token.
      def inspect
        "<Token #{@type.inspect} (#{@value}) @#{@line}:#{@column}>"
      end
    end
  end
end
