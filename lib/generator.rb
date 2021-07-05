# frozen_string_literal: true

require 'rutie'

module RustGenerator
  Rutie.new(:generator).init("Init_rust_generator", __dir__)
end

module Generator
  class << self
    def c_generate(count)
      generator._generate(count)
    end

    def rust_generate(count)
      RustGenerator.generate(count)
    end

    private

    def generator
      @generator ||= Native.new
    end
  end

  class Native
  end

  require "generator/generator" # loads cpp extension

  private_constant :Native
end
