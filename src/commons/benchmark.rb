#!/bin/ruby
require 'time'
N = 10
sum = 0
max = 0
min = 0

file = ARGV[0]

(1..N).each do |i|

	start_time = Time.now
	sh = `/bin/sh ../questions/#{file}`
	end_time = Time.now
	time= end_time - start_time

	sum += time
	max = time if i == 1 || max <= time
	min = time if i == 1 || min >= time

end

puts "--------------"
puts "avg: #{(sum / N )}"
puts "--------------"
puts "max: #{max}"
puts "--------------"
puts "min: #{min}"
