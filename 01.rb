def part1(input)
  sum = 0
  input.each do |line|
    eval "sum = sum #{line}"
  end
  sum
end

def part2(input)
  sums = []
  sum = 0
  loop do
    input.each do |line|
      eval "sum = sum #{line}"
      if sums.include? sum
        return sum
      else
        sums << sum
      end
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
