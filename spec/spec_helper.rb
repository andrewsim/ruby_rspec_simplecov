require 'simplecov'
require 'simplecov-json'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::JSONFormatter,
]
SimpleCov.start

require_relative '../string_ops'
