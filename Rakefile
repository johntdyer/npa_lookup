require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "npa_lookup"
    gem.summary = "NPA|Nxx Lookup command line tool for CloudVox's Digits.cloundvox.com API"
    gem.description = "NPA|Nxx Lookup command line tool for CloudVox's Digits.cloundvox.com API"
    gem.email = "john@krumpt.com"
    gem.homepage = "http://github.com/krumpt/npa_lookup"
    gem.authors = ["John Dyer"]
    gem.add_dependency "json", ">= 1.2.9"
    gem.add_dependency "json", ">= 1.2.9"
    gem.add_dependency "terminal-table"

    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "npa_lookup #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

