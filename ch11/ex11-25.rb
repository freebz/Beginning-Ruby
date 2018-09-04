# RubyInline

# Why Use C as an Inline Language?

# Creating a Basic Method or Function

class Fixnum
  def factorial
    (1..self).inject { |a, b| a * b }
  end
end

puts 8.factorial


require 'benchmark'

Benchmark.bm do |bm|
  bm.report('ruby:') do
    100000.times do
      8.factorial
    end
  end
end



require 'inline'

class CFactorial
  inline do |builder|
    builder.c "
      long factorial(int max) {
        int i=max, result=1;
        while (i >= 2) { result *= i--; }
        return result;
      }"
  end
end

c = CFactorial.new()
puts c.factorial(8)
