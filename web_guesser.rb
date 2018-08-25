require 'sinatra'
require 'sinatra/reloader'

num = rand(100)
message = ""



get '/' do


    guess = params["guess"].to_i
    

        if guess > num + 5
            message = "Way too high!"
        elsif guess < num - 5
            message = "Way too low!"
        elsif guess > num
            message = "Too high!"
        elsif guess < num
            message = "Too low!"
        else
            message = "You got it right! The secret number is #{num}!"
        end
  
  erb :index, :locals => {:num => num, :message => message}
  

end

