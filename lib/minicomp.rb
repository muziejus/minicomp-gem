# frozen_string_literal: true

# This is an anti-pattern
# $LOAD_PATH.unshift __dir__ # For use/testing when no gem is installed

# Require all of the Ruby files in the given directory.
#
# path - The String relative path from here to the directory.
#
# Returns nothing.
def require_all(path)
  glob = File.join(__dir__, path, "*.rb")
  Dir[glob].sort.each do |f|
    require f
  end
end

# stlib

# third-party
# require "safe_yaml/load"

# SafeYAML::OPTIONS[:suppress_warnings] = true

module Minicomp
  autoload :VERSION, "minicomp/version"
  autoload :Command, "minicomp/command"

  require_all "minicomp/commands"
end
