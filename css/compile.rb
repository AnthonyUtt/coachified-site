#!/usr/bin/env ruby
result = `sass css/main.scss css/main.css`
raise result unless $?.to_i == 0
raise "When compiled the module should output some CSS" unless File.exists?('main.css')
puts "Regular compile worked successfully"
