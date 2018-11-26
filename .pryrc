require 'coda_docs'
require 'dotenv/load'

def reload!
  puts 'Reloading....'
  load 'lib/coda_docs.rb'
  Dir[
    File.join(
      File.dirname(__FILE__),
      'lib', 'coda_docs', '**', '*.rb'
    )
  ].each { |file| load file }
  true
end

if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end
