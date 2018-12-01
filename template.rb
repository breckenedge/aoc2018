def main(input)
  # program goes here
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
