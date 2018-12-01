def main(input)
  sums = []
  sum = 0
  loop do |x|
    input.each do |line|
      eval "sum = sum #{line}"
      if sums.include? sum
        puts sum
        exit
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
    main(input)
  end
end

__END__
