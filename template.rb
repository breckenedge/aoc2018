#!/usr/bin/env ruby

def part1(input)
  return 'XXX'
end

def part2(input)
  return 'XXX'
end

if __FILE__ == $0
  require 'pry'
  require 'pry-byebug'
  require 'pry-rescue'
  require 'pry-stack_explorer'

  input = (ARGV.empty? ? DATA : ARGF).readlines.map(&:chomp)

  Pry.rescue do
    puts "part 1: #{part1(input)}"
    puts "part 2: #{part2(input)}"
  end
end

__END__
