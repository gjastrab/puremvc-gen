= PureMVCGen

* http://bit.ly/puremvc-gen

== DESCRIPTION:

PureMVCGen is a ruby gem which wraps an ANT-based code generation
utility for generating PureMVC ActionScript code.

== FEATURES/PROBLEMS:

 -Features-
 
 * Validates project property settings
 * Generates the skeleton of a new Flex PureMVC project including:
   - appropriate PureMVC folders
   - Facade class
   - StartupCommand and PrepareActorsCommand classes
 * Generates skeleton PureMVC clases:
   - SimpleCommand
   - MacroCommand
   _ Proxy
   - Mediator
 
 -Problems-
 
 * MultiCore templates not yet created

== SYNOPSIS:
  Lines starting with a $ denote the following command should
  be run on the command line.
  
  1. Create a proj.properties file in the directory you wish to begin
     your project
     
  2. $ puremvc-gen check
  
     The check command will check if the required properties for a
     project have been set.  If they have not it will denote what
     the required properties are.  Refer to the example settings at
     the blog post at http://bit.ly/puremvc-gen
     
  3. Set the required properties in proj.properties
  
  4. $ puremvc-gen init
  
     The init command will create the skeleton of a new Flex PureMVC project.
     
  If you want to create a new command:
  
    $ puremvc-gen new command -n Example
    
  which would generate a new SimpleCommand named ExampleCommand.
  
  For help using puremvc-gen:
  
    $ puremvc-gen help
    
  which will output the usage:
  
  Usage: puremvc-gen  [options] COMMAND [options] [COMMAND [options] ...] [args]

  Available commands:
    check          Validates that all required property settings are current detected
    help           Provide help for individual commands
    init           Initializes the current working directory with a new PureMVC project
    new            Command to generate PureMVC classes
      command        Creates a simple or macro command (defaults to simple).
      mediator       Creates a new mediator.
      proxy          Creates a new proxy.
    version        Show the version of the program

== REQUIREMENTS:

* Apache ANT: http://ant.apache.org

== INSTALL:

* sudo gem install puremvc-gen

== LICENSE:

(The MIT License)

Copyright (c) 2008 FIX

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
