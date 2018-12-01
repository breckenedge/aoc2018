require 'set'

def part1(input)
  eval(input.join)
end

def part2(input)
  sums = Set.new
  sum = 0
  input.cycle do |line|
    sum += line.to_i
    if sums.include? sum
      return sum
    else
      sums << sum
    end
  end
end

if __FILE__ == $0
  require 'pry'
  require 'pry-byebug'
  require 'pry-rescue'
  require 'pry-stack_explorer'

  input = (ARGV.empty? ? DATA : ARGF).readlines.map(&:chomp)

  Pry.rescue do
    print 'part 1: '
    puts part1(input)
  end

  Pry.rescue do
    print 'part 2: '
    puts part2(input)
  end
end

__END__
