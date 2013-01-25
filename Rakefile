require 'rake/testtask'
begin
  require 'rdoc/task'
rescue LoadError
  require 'rake/rdoctask'
end

desc 'Default: run unit tests'
task :default => :test

desc 'Test the respond_to_missing gem'
Rake::TestTask.new(:test) do |t|
  t.libs.push 'lib'
  t.pattern = 'test/*_test.rb'
end

desc 'Generate documentation for the respond_to_missing gem'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'respond_to_missing'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end