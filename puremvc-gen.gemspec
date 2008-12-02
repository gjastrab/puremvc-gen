# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{puremvc-gen}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Greg Jastrab"]
  s.date = %q{2008-12-02}
  s.default_executable = %q{puremvc-gen}
  s.description = %q{An ANT-based PureMVC generator.}
  s.email = %q{gjastrab.dev@gmail.com}
  s.executables = ["puremvc-gen"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/puremvc-gen", "conf/build.xml", "conf/config/pmvcgen.log.properties", "conf/config/pmvcgen.properties", "conf/example/author.properties", "conf/example/proj.properties", "conf/templates/.DS_Store", "conf/templates/Event.tpl", "conf/templates/standard/Application.tpl", "conf/templates/standard/Facade.tpl", "conf/templates/standard/MacroCommand.tpl", "conf/templates/standard/Mediator.tpl", "conf/templates/standard/Proxy.tpl", "conf/templates/standard/SimpleCommand.tpl", "lib/pure_m_v_c_gen.rb", "lib/pure_m_v_c_gen/version.rb", "test/test_pure_m_v_c_gen.rb"]
  s.has_rdoc = true
  s.homepage = %q{FIX (url)}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{gjastrab}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{An ANT-based PureMVC generator.}
  s.test_files = ["test/test_pure_m_v_c_gen.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 1.8.2"])
    else
      s.add_dependency(%q<hoe>, [">= 1.8.2"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.8.2"])
  end
end
