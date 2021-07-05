$:.unshift("./lib")
require 'generator'

Generator.generate(1_000_000)
