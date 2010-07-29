# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{npa_lookup}
  s.version = "0.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John Dyer"]
  s.date = %q{2010-07-29}
  s.default_executable = %q{lookup}
  s.description = %q{NPA|Nxx Lookup command line tool for CloudVox's Digits.cloundvox.com API}
  s.email = %q{john@krumpt.com}
  s.executables = ["lookup"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.markdown",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/lookup",
     "lib/npa_lookup.rb",
     "npa_lookup.gemspec",
     "spec/npa_lookup_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/krumpt/npa_lookup}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.requirements = ["terminal-table, v1.4.3 or greater"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{NPA|Nxx Lookup command line tool for CloudVox's Digits.cloundvox.com API}
  s.test_files = [
    "spec/npa_lookup_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 1.2.9"])
      s.add_runtime_dependency(%q<json>, [">= 1.2.9"])
      s.add_runtime_dependency(%q<terminal-table>, [">= 1.4"])
    else
      s.add_dependency(%q<json>, [">= 1.2.9"])
      s.add_dependency(%q<json>, [">= 1.2.9"])
      s.add_dependency(%q<terminal-table>, [">= 1.4"])
    end
  else
    s.add_dependency(%q<json>, [">= 1.2.9"])
    s.add_dependency(%q<json>, [">= 1.2.9"])
    s.add_dependency(%q<terminal-table>, [">= 1.4"])
  end
end

