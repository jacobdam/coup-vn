# Use locked gems if present.
begin
  require File.expand_path('../../.bundle/environment', __FILE__)

rescue LoadError
  # Otherwise, use RubyGems.
  require 'rubygems'

  # And set up the gems listed in the Gemfile.
  if File.exist?(File.expand_path('../../Gemfile', __FILE__))
    require 'bundler'
    Bundler.setup
  end
end

=begin
require 'rubygems'

# Set up gems listed in the Gemfile.
gemfile = File.expand_path('../../Gemfile', __FILE__)
begin
    ENV['BUNDLE_GEMFILE'] = gemfile
  require 'bundler'
  Bundler.setup
rescue Bundler::GemNotFound => e
  STDERR.puts e.message
  STDERR.puts "Try running `bundle install`."
  exit!
end if File.exist?(gemfile)
=end