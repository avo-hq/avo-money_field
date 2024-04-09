$:.push File.expand_path("lib", __dir__)

require "avo/money_field/version"

Gem::Specification.new do |spec|
  spec.name = "avo-money_field"
  spec.version = Avo::MoneyField::VERSION
  spec.summary = "Money field for Avo."
  spec.description = "Money field for Avo."
  spec.authors = ["Adrian Marin"]
  spec.email = "adrian@adrianthedev.com"

  spec.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md", "avo-money_field.gemspec", "Gemfile", "Gemfile.lock"]

  spec.homepage = "https://avohq.io"
  spec.license = "MIT"

  spec.add_dependency "money-rails", "~> 1.12"
end
