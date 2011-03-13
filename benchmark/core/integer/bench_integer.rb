require 'benchmark'
require 'benchmark/ips'

Benchmark.ips do |x|
  int = 1
  float = 1.2
  
  x.report "Integer#integer? true" do |times|
    i = 0
    while i < times
      int.integer?
      i += 1
    end
  end

  x.report "Integer#integer? false" do |times|
    i = 0
    while i < times
      float.integer?
      i += 1
    end
  end
  
end
