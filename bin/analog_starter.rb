#!/usr/bin/env ruby
require_relative "../bin/environment"

puts "Welcome to Analog(ue): the British-American Translator"
puts "Please choose your native English: 'British' or 'American'.\nTo see a list of all words and translations please type 'show'"
input = gets.strip.downcase
AnalogCLI.new(country).call


