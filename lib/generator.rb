# frozen_string_literal: true

module Generator
  class << self
    def generate(count)
      generator._generate(count)
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
