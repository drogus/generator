$:.unshift("./lib")
require 'generator'

p Generator.c_generate(1_000_000).length
p Generator.rust_generate(1_000_000).length
