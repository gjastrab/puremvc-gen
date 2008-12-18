module PureMVCGen
  class AntChecker
    
    # Determines if ANT is installed on the system
    def self.has_ant_installed?
      AntChecker.find_in_path("ant")
    end
    
    # Searches the path, looking for the given utility. If an executable
    # file is found that matches the parameter, this returns true.
    def self.find_in_path(utility)
     path = self.get_path
     suffixes = self.on_windows? ? self.windows_executable_extensions : [""]

     path.each do |dir|
       suffixes.each do |sfx|
         file = File.join(dir, utility + sfx)
         return true if File.executable?(file)
       end
     end

     false
    end
    
    def self.get_path
      (ENV['PATH'] || "").split(File::PATH_SEPARATOR)
    end
    
    # Locates the ant executable or BAT file and returns the full path to it
    def self.get_windows_ant
      ext = %w(.exe .bat)
      path = self.get_path
      
      path.each do |dir|
        ext.each do |sfx|
          file = File.join(dir, "ant" + sfx)
          return File.expand_path(file) if File.executable?(file)
        end
      end
      
      nil
    end
    
    def self.on_windows?
     RUBY_PLATFORM =~ /mswin|mingw/
    end

    def self.windows_executable_extensions
     %w(.exe .bat .com .cmd)
    end
    
    end
end