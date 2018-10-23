# frozen_string_literal: true

module Minicomp
  module Commands
    class Csv < Command
      class << self
        def init_with_program(prog)
          prog.command(:csv) do |c|
            c.syntax "csv [subcommand]"
            c.description "Work with csv (comma-separated values) files"
            c.action do |args, _|
              cmd = (args.first || "").to_sym
              if args.empty?
                puts "no command given to csv"
              elsif prog.has_command? cmd
                puts prog.commands[cmd].to_s
              else
                puts "invalid command, #{prog}, #{cmd}"
                abort
              end
            end
          end
        end
      end

      # def invalid_command(prog, cmd)
      # end
    end
  end
end
