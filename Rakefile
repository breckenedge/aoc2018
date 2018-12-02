require 'fileutils'
require 'yaml'

task :default do
  settings = YAML.load_file('settings.yml').transform_keys(&:to_sym)
  template_name = 'template.rb'
  now = Time.now.getlocal('-05:00')
  year = now.year
  day = now.day
  challenge = Kernel.format('%02d', day)
  script_filename = challenge + '.rb'
  if !File.exist?(script_filename)
    FileUtils.cp(template_name, script_filename)
    `open https://adventofcode.com/#{year}/day/#{day}`
    input_filename = Kernel.format('%02d', day) + '_input.txt'
    if !File.exist?(input_filename)
      `curl 'https://adventofcode.com/#{year}/day/#{day}/input' -H 'authority: adventofcode.com' -H 'cache-control: max-age=0' -H 'upgrade-insecure-requests: 1' -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36' -H 'dnt: 1' -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'referer: https://adventofcode.com/#{year}/day/#{day}' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: en-US,en;q=0.9,zh;q=0.8' -H 'cookie: _ga=GA1.2.1320088243.1542811391; session=#{settings[:session]}; _gid=GA1.2.301633379.1543633080; _gat=1' --compressed > #{input_filename}`
    end
    `cat #{input_filename} >> #{script_filename}`
  end
  puts "ruby #{script_filename} #{input_filename}"
end
