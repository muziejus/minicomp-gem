# frozen_string_literal: true

module Minicomp
  class Command
    class << self
      # A list of subclasses of Minicomp::Command
      def subclasses
        @subclasses ||= [] 
      end

      # Keep a list of subclasses of Minicomp::Command every time it's inherited
      # Called automatically.
      #
      # base - the subclass
      #
      # Returns nothing
      def inherited(base)
        subclasses << base
        super(base)
      end
    end
  end
end
