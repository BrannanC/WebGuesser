require 'sinatra'
require 'sinatra/reloader'

num = rand(10)
get '/' do
  "The secret number is #{num}"
end