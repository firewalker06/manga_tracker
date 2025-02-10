require_relative "lib/manga_tracker/version"

Gem::Specification.new do |spec|
  spec.name        = "manga_tracker"
  spec.version     = MangaTracker::VERSION
  spec.authors     = [ "firewalker06" ]
  spec.email       = [ "didik.wicaksono@gmail.com" ]
  spec.homepage    = "https://github.com/firewalker06/manga_tracker"
  spec.summary     = "Scheduler to track manga updates."
  spec.description = "A Rails engine that provides scheduled background jobs to check manga updates"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.1"
end
