module CmdParse
  class Command
    # injects our common options
    def default_options(&block)
      CmdParse::OptionParserWrapper.new do |opt|
        opt.on("-h", "--help") do
          self.show_help
          exit
        end
        yield(opt)
      end
    end
  end
end