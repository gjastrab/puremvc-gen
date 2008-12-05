module PureMVCGen
  module Commands
    class NewCommand < CmdParse::Command
  
      def initialize
        super('new', true)
        self.short_desc = "Command to generate PureMVC classes"
    
        # add sub commands
        self.add_command(CreateCommand.new)
        self.add_command(CreateMediator.new)
        self.add_command(CreateProxy.new)
      end
  
      class CreateCommand < CmdParse::Command
    
        def initialize
          super('command', false)
          @type = :simple
          self.short_desc = "Creates a simple or macro command (defaults to simple)."
          self.description = <<-EOL
              Generates a simple or macro command.
              Generating a simple command is the default behavior, unless the macro switch is passed:
              -m or --macro
        
            If no other switches are passed, the ANT script will prompt for a command name and constant,
            however these may be passed on the command line with the -n (or --name) and -c (or --const) switches.
          EOL
          self.options = default_options do |opt|
            opt.on("-m", "--macro", "Specifies the command is a MacroCommand") { @type = :macro }
            opt.on("-n", "--name COMMAND_NAME", "Specifies the name for the command") { |name| @command_name = name }
            opt.on("-c", "--const COMMAND_CONSTANT", "Specifies the constant to use for the command") { |const| @command_const = const }
          end
        end
    
        def execute(args)
          cmd = ""
          cmd << "-Dcmd.name=#{@command_name} " unless @command_name.nil?
          cmd << "-Dcmd.const=#{@command_const} " unless @command_const.nil?
          cmd << "#{@type == :simple ? "create-simple-command" : "create-macro-command"}"
          call_ant cmd
        end
    
      end
  
      class CreateMediator < CmdParse::Command
    
        def initialize
          super('mediator', false)
          self.short_desc = "Creates a new mediator."
          self.options = default_options do |opt|
            opt.on("-n", "--name MEDIATOR_NAME", "Specifies the name for the mediator") { |name| @mediator_name = name }
          end
        end
    
        def execute(args)
          cmd = ""
          cmd << "-Dmediator.name=#{@mediator_name} " unless @mediator_name.nil?
          cmd << "create-mediator"
          call_ant cmd
        end
    
      end
  
      class CreateProxy < CmdParse::Command
    
        def initialize
          super('proxy', false)
          self.short_desc = "Creates a new proxy."
          self.options = default_options do |opt|
            opt.on("-n", "--name PROXY_NAME", "Specifies the name for the proxy") { |name| @proxy_name = name }
          end
        end
    
        def execute(args)
          cmd = ""
          cmd << "-Dproxy.name=#{@proxy_name} " unless @proxy_name.nil?
          cmd << "create-proxy"
          call_ant cmd
        end
    
      end
  
    end
  end
end