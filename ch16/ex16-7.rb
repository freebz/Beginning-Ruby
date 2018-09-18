# Benchmark

require 'benchmark'
puts Benchmark.measure { 10000000.times { rand } }
