module PureMVCGen
  module Commands
    class CheckCommand < CmdParse::Command
  
      def initialize
        super('check', false)
        self.short_desc = "Validates that all required property settings are current detected"
      end
  
      def execute(args)
        call_ant "validate-properties"
      end
      
    end
  end
end