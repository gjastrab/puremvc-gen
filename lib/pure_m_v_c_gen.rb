require 'rubygems'
require 'cmdparse'
require 'pure_m_v_c_gen/version'

PMVC_GEN_LIB = File.join(File.dirname(__FILE__), '..', 'lib', 'pure_m_v_c_gen')
require File.join(PMVC_GEN_LIB, 'ant_checker')

unless PureMVCGen::AntChecker.has_ant_installed?
  err = <<-EOL
    You must have ANT installed to run puremvc-gen.
    Install it! ==> http://ant.apache.org
    If you have it installed, ensure it is on your path.
  EOL
  puts err
  exit 1
end

CMD_PATH = File.join(PMVC_GEN_LIB, 'commands')

require File.join(CMD_PATH, 'command_extensions')
require File.join(CMD_PATH, 'check_command')
require File.join(CMD_PATH, 'initialize_command')
require File.join(CMD_PATH, 'new_command')