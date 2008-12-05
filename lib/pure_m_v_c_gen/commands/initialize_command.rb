module PureMVCGen
  module Commands
    class InitializeCommand < CmdParse::Command
  
      def initialize
        super('init', false)
        self.short_desc = "Initializes the current working directory with a new PureMVC project"
      end
  
      def execute(args)
        call_ant "new-pmvc"
      end
  
    end
  end
end