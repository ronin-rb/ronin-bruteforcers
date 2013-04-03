source 'https://rubygems.org'

DM_URI     = 'http://github.com/datamapper'
DM_VERSION = '~> 1.2'
DO_VERSION = '~> 0.10.3'
RONIN_URI  = 'http://github.com/ronin-ruby'

gemspec

gem 'jruby-openssl',	'~> 0.7', platforms: :jruby

# Ronin dependencies:
gem 'ronin-support',  '~> 0.6', git:    "#{RONIN_URI}/ronin-support.git",
                                branch: '0.6.0'
gem 'ronin',          '~> 1.6', git:    "#{RONIN_URI}/ronin.git",
                                branch: '1.6.0'

group :development do
  gem 'rake',         '~> 10.0'
  gem 'kramdown',     '~> 0.12'

  gem 'rubygems-tasks', '~> 0.1'
  gem 'rspec',          '~> 2.4'

  gem 'dm-visualizer',		'~> 0.2.0'
end

group :test do
  gem 'do_mysql',    DO_VERSION
  gem 'do_postgres', DO_VERSION
end


#
# To enable additional DataMapper adapters for development work or for
# testing purposes, simple set the ADAPTER or ADAPTERS environment
# variable:
#
#     export ADAPTER="postgres"
#     bundle install
#
#     ./bin/ronin --database postgres://ronin@localhost/ronin
#
require 'set'

DM_ADAPTERS = Set['postgres', 'mysql', 'oracle', 'sqlserver']

adapters = (ENV['ADAPTER'] || ENV['ADAPTERS']).to_s
adapters = Set.new(adapters.to_s.tr(',',' ').split)

(DM_ADAPTERS & adapters).each do |adapter|
  gem "dm-#{adapter}-adapter", DM_VERSION #, git: "#{DM_URI}/dm-#{adapter}-adapter.git"
end
