require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

# To open up gem in pry mode during development
# Run rake console
task :console do
  exec "pry -r coda_docs -I ./lib"
end
