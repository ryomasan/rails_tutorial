# -*- encoding: utf-8 -*-
# stub: rails-i18n 8.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-i18n".freeze
  s.version = "8.0.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.11".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Rails I18n Group".freeze]
  s.date = "2024-11-10"
  s.description = "A set of common locale data and translations to internationalize and/or localize your Rails applications.".freeze
  s.email = "rails-i18n@googlegroups.com".freeze
  s.homepage = "https://github.com/svenfuchs/rails-i18n".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.2.0".freeze)
  s.rubygems_version = "3.5.16".freeze
  s.summary = "Common locale data and translations for Rails i18n.".freeze

  s.installed_by_version = "3.5.23".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<i18n>.freeze, [">= 0.7".freeze, "< 2".freeze])
  s.add_runtime_dependency(%q<railties>.freeze, [">= 8.0.0".freeze, "< 9".freeze])
  s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.7".freeze])
  s.add_development_dependency(%q<i18n-spec>.freeze, ["~> 0.6.0".freeze])
  s.add_development_dependency(%q<i18n-tasks>.freeze, ["~> 0.9.37".freeze])
end
