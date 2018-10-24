# frozen_string_literal: true

module Minicomp
  module Commands
    class Csv < Command
      class << self
        def init_with_program(prog)
          prog.command(:csv) do |c|
            c.syntax "csv [options]"
            c.description "Work with csv (comma-separated value) files"
            c.action do |args, _|
              cmd = (args.first || "").to_sym
              if args.empty?
                puts "No command given to csv"
              elsif prog.has_command? cmd
                puts prog.commands[cmd].to_s
              else
                puts "Minicomp does not understand this invalid option: #{cmd}"
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
