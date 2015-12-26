require "bundler/gem_tasks"
require "rake/testtask"

RAKE_FILE_DIRECTORY = File.dirname(__FILE__)
LIB_DIRECTORY = File.expand_path('lib', RAKE_FILE_DIRECTORY)

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

task :default => :test
