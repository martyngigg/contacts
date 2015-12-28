require "bundler/gem_tasks"
require "rake/testtask"
require "rdoc/task"

RAKE_FILE_DIRECTORY = File.dirname(__FILE__)
LIB_DIRECTORY = File.expand_path('lib', RAKE_FILE_DIRECTORY)
DOCS_DIRECTORY = File.expand_path('doc', RAKE_FILE_DIRECTORY)

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

task :rubocop do
  Dir.chdir(LIB_DIRECTORY) do
    puts "chdir #{LIB_DIRECTORY}"
    exec('rubocop')
  end
end

RDoc::Task.new do |rdoc|
  rdoc.main = "README.rdoc"
  rdoc.rdoc_files.include("README.rdoc", "lib")
end

task :default => :test
