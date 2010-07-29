#!/usr/bin/env ruby -WKU
require 'rubygems'
require "net/http"
require "uri"
require 'json/pure'
require 'terminal-table/import' #http://vision-media.ca/resources/ruby/ruby-terminal-table-gem

SPACES = "18"

#Make sure we have numbers
def safeParse(strToParse)
  if strToParse =~ /\A\d+\Z/
    return strToParse.to_s
  else
    raise Exception
  end
end

#colorize tables
def colorize(text, color_code,how_many_spaces)
  "\e[#{color_code}m#{text}\e[#{how_many_spaces}C\033[0m\033[0m"
end

def red(text,how_many_spaces); colorize(text, 31,how_many_spaces); end
def green(text,how_many_spaces); colorize(text, 32,how_many_spaces); end
def yellow(text,how_many_spaces); colorize(text, 33,how_many_spaces); end
def blue(text,how_many_spaces); colorize(text, 34,how_many_spaces); end
def cyan(text,how_many_spaces); colorize(text, 36,how_many_spaces); end
def white(test,how_many_spaces);colorize(test,37,how_many_spaces);end

# format arguments for API call
def parse_args(i)
    begin 
      case safeParse(i).length
        when 3  
          return i
        when 6
          i=i.dup
          i.insert(3, '/')
        when 10
          return i
        else
          puts "Error {NumberError}"
          exit!
      end
  rescue Exception
    puts "#{i} is invalid"
    exit!
  end
end

## Take in args and hit API

ARGV.each do|a|
    uri = URI.parse("http://digits.cloudvox.com/#{parse_args(a)}.json")
    response = Net::HTTP.get_response(uri)
  begin
    jsonObject = JSON.parse(response.body)
  rescue JSON::ParserError => msg
    puts "Failed: #{msg.message} | #{a}.json"
    exit!
  end

  ## Simplify JSON structure 

    data = jsonObject['allocation']
    
    ## Start table (terminal-table)
    t = table ['Data', 'Value']
    t << [red("NPA","18"),yellow("#{data['npa']}",SPACES)]

    ## If nxx is not there don't include it in table
    if data['nxx']!=nil; t << [red("Nxx","18"),yellow("#{data['nxx']}",SPACES)];end

    ## If ratecenter_formatted is not there don't include it in table
    if data['ratecenter_formatted'] !=nil&&data['ratecenter_formatted']!=""; t << [red("City","18"),yellow("#{data['ratecenter_formatted']}",SPACES)]; end

    t << [red("State","18"),yellow("#{data['region']}",SPACES)]
    t << [red("Status","18"),yellow("#{data['status'].capitalize}",SPACES)]

    ## If carrier_name is not there don't include it in table
    if data['carrier_name'] !=nil; t << [red("Carrier","18"),yellow("#{data['carrier_name']}",SPACES)]; end

    puts t 
    puts "\n"
end
